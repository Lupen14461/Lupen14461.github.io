// This file contains the JavaScript code for the personal website, implementing interactive features.

document.addEventListener('DOMContentLoaded', function() {
    const sections = document.querySelectorAll('section');
    const navLinks = document.querySelectorAll('nav a');

    navLinks.forEach(link => {
        link.addEventListener('click', function(event) {
            event.preventDefault();
            const targetId = this.getAttribute('href').substring(1);
            const targetSection = document.getElementById(targetId);

            sections.forEach(section => {
                section.style.display = 'none';
            });

            targetSection.style.display = 'block';
        });
    });

    // Show the first section by default
    if (sections.length > 0) {
        sections[0].style.display = 'block';
    }
});