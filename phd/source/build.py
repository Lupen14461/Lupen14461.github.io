from pathlib import Path
import json
source=Path(__file__).resolve().parent
data=json.loads((source/'data.json').read_text(encoding='utf-8-sig'))
template=(source/'template.html').read_text(encoding='utf-8-sig')
html=template.replace('__DATA__',json.dumps(data,ensure_ascii=False).replace('<','\\u003c'))
assert '__DATA__' not in html
(source.parent/'index.html').write_text(html,encoding='utf-8')
print('Updated phd/index.html')
