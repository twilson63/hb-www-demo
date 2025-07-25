State['app.js'] = {
  ["content-type"] = "text/javascript",
  body = [[
// JavaScript
    const elephantSVG = `
        <svg viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
            <!-- Body -->
            <ellipse cx="50" cy="50" rx="30" ry="25"/>
            <!-- Head -->
            <circle cx="25" cy="45" r="18"/>
            <!-- Trunk -->
            <path d="M 10 50 Q 5 60 10 70 Q 15 75 20 70" fill="none" stroke="currentColor" stroke-width="6" stroke-linecap="round"/>
            <!-- Legs -->
            <rect x="30" y="60" width="8" height="20" rx="4"/>
            <rect x="42" y="60" width="8" height="20" rx="4"/>
            <rect x="54" y="60" width="8" height="20" rx="4"/>
            <rect x="66" y="60" width="8" height="20" rx="4"/>
            <!-- Ear -->
            <path d="M 25 35 Q 15 25 10 35 Q 8 45 15 50 Q 25 48 25 35"/>
            <!-- Eye -->
            <circle cx="20" cy="40" r="2" fill="black"/>
            <!-- Tail -->
            <path d="M 75 50 Q 85 55 82 65" fill="none" stroke="currentColor" stroke-width="4" stroke-linecap="round"/>
        </svg>
    `;

    function createElephant() {
        const elephant = document.createElement('div');
        elephant.className = 'elephant';
        elephant.innerHTML = elephantSVG;
        return elephant;
    }

    function initializeMarquee() {
        const track = document.getElementById('marqueeTrack');
        const numberOfElephants = 8;
        
        // Create two sets of elephants for seamless loop
        for (let set = 0; set < 2; set++) {
            for (let i = 0; i < numberOfElephants; i++) {
                track.appendChild(createElephant());
            }
        }
    }

    // Initialize on page load
    window.addEventListener('DOMContentLoaded', initializeMarquee);

    // Add some interactivity - speed up on hover
    const marqueeContainer = document.querySelector('.marquee-container');
    const marqueeTrack = document.getElementById('marqueeTrack');
    
    marqueeContainer.addEventListener('mouseenter', () => {
        marqueeTrack.style.animationDuration = '10s';
    });
    
    marqueeContainer.addEventListener('mouseleave', () => {
        marqueeTrack.style.animationDuration = '20s';
    });
  ]]

}
