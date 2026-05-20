---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

Education
======
* M.Sc. in Photonics (expected Nov. 2026), Abbe School of Photonics, University of Jena, Germany (Sep 2022 – Present)
  * Courses: Modern Optics, Introduction to Optical Modeling, Laser Physics, Optoelectronics, Optical Metrology & Sensing
* M.Sc. Coursework in Microelectronics, University of Chinese Academy of Sciences, Beijing, China (Sep 2021 – Aug 2022)
  * Courses: Sensor & Applications, Semiconductor Photonics, Physics of Semiconductor Devices
  * Transferred to FSU Jena via the joint programme between CIOMP (CAS) and Abbe School of Photonics
* B.Eng. in Biomedical Engineering, Huazhong University of Science and Technology, Wuhan, China (Sep 2017 – Jun 2021)
  * Courses: Biomedical Photonics, Medical Imaging Systems, Data Structures & Computer Systems, Fundamentals of Machine Learning

Research Experience
======
* **Live-Cell Imaging of F-Actin by Polarization Fluorescence Microscopy** (May 2026 – Present)
  * Leibniz Institute of Photonic Technology (IPHT), Microscopy Dept., Jena, Germany
  * Supervised by Prof. Dr. Rainer Heintzmann and Dr. Daniela Täuber
  * Ongoing project; currently conducting literature review and familiarising with the 2DPOLIM live-cell imaging platform

* **Mid-IR Spectroscopic Imaging of RPE Granules** (Sep 2025 – Apr 2026)
  * Leibniz Institute of Photonic Technology (IPHT), Microscopy Dept., Jena, Germany
  * Supervised by Prof. Dr. Rainer Heintzmann and Dr. Daniela Täuber
  * Funded by the German Research Foundation (DFG)
  * Acquired hyperspectral data (~5 nm spatial resolution) via PiF-IR, surpassing the resolution limit of conventional FTIR
  * Applied PCA to visualise chemical heterogeneity on melanosome surfaces
  * Results presented as a poster at DPG Spring Meeting 2026, Dresden

* **MAGIC NOR Logic Gate Based on BFO Memristors** (Jan 2024 – Sep 2025)
  * Leibniz Institute of Photonic Technology (IPHT), Quantum Detection Dept., Jena, Germany
  * Supervised by Prof. Dr. Heidemarie Krüger and Dr. Nan Du
  * Implemented and verified a NOR logic gate under the MAGIC architecture using analogue BiFeO3 (BFO) memristors
  * Performed multi-cycle endurance and retention tests; data acquisition and analysis with Python

* **Bachelor Thesis — Deep Learning for Alzheimer's Disease Classification** (May 2020 – May 2021)
  * Wuhan National Laboratory for Optoelectronics, Wuhan, China
  * Supervised by Prof. Haimin Luo
  * Incorporated CSF biomarker data into a multimodal neural network; MLP-based fusion achieved improvements in accuracy and sensitivity over the baseline model

Skills
======
* **Programming:** Python (data processing, image analysis)
* **Optics:** Currently learning Zemax for optical design; interested in metasurface-based and computational imaging systems
* **Languages:** English — professional proficiency (IELTS 7.0); Chinese — native

Publications
======
  <ul>{% for post in site.publications reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>
  
Talks
======
  <ul>{% for post in site.talks reversed %}
    {% include archive-single-talk-cv.html  %}
  {% endfor %}</ul>
  
Teaching
======
  <ul>{% for post in site.teaching reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>

Honours & Awards
======
* **Team Second Prize**, SoftBank Robotics Cup (China Robot Skills Competition) — Golf Project, Taizhou, China, 2018
  * Responsible for target-recognition module coding and debugging
