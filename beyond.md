---
layout: default
title: "& Beyond"
---
other things i like

**Geodesic Dome at Half Moon Bay (2025)**  
I built a geodesic dome for my 20th birthday. Inspired by the Buckminster Fuller papers I came across at the Stanford Special Collections Archive.

**19k for 19 (2024)**
I ran 19k on May 19 for my 19th birthday! I did it as a part of Bay2Breakers and added the 7k at Lombard Street...that was not a good idea. I also did not train for this at all and my knees suffered for many months after. 

**Half marathon (2022)**
Back in my rowing days, I erged a half marathon with my good friend Kathryn in the River City Rowing Club boathouse.

<div style="text-align: center; margin-top: 20px;">
<img src="{{ '/assets/erg1.png' | relative_url }}" alt="Erging Half Marathon 1" style="max-width: 300px; margin: 10px;">
<img src="{{ '/assets/erg2.png' | relative_url }}" alt="Erging Half Marathon 1" style="max-width: 300px; margin: 10px;">
</div>

**Run to feed the hungry (2021, 2022, 2023, 2024)**
I am a religious turkey trotter.
<!-- Bootstrap CSS & JS via CDN -->

<div id="runCarousel" class="carousel slide mb-5" data-bs-ride="carousel" style="max-width: 700px; margin: 2rem auto;">
  <div class="carousel-inner rounded shadow">
    <div class="carousel-item active">
      <img src="/assets/run2021.png" class="d-block w-100" alt="Run 2021">
    </div>
    <div class="carousel-item">
      <img src="/assets/run2022.png" class="d-block w-100" alt="Run 2022">
    </div>
    <div class="carousel-item">
      <img src="/assets/run2023.png" class="d-block w-100" alt="Run 2023">
    </div>
    <div class="carousel-item">
      <img src="/assets/run2024.png" class="d-block w-100" alt="Run 2024">
    </div>
  </div>

  <!-- Navigation arrows -->
  <button class="carousel-control-prev" type="button" data-bs-target="#runCarousel" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#runCarousel" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

---
**Traveling**
## 🌍 Wandering Map

<div id="map-toggle">
  <button onclick="filterMap('all')">All</button>
  <button onclick="filterMap('physical')">Physical</button>
  <button onclick="filterMap('cerebral')">Cerebral</button>
</div>

<div id="travel-map" style="height: 400px; margin-top: 1em;"></div>

<script>
  // Load Leaflet
  const leafletCSS = document.createElement('link');
  leafletCSS.rel = 'stylesheet';
  leafletCSS.href = 'https://unpkg.com/leaflet@1.9.4/dist/leaflet.css';
  document.head.appendChild(leafletCSS);

  const leafletJS = document.createElement('script');
  leafletJS.src = 'https://unpkg.com/leaflet@1.9.4/dist/leaflet.js';
  leafletJS.onload = renderMap;
  document.head.appendChild(leafletJS);

  function renderMap() {
    const map = L.map('travel-map').setView([20, 0], 2);

    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
      attribution: '&copy; OpenStreetMap contributors'
    }).addTo(map);

    const markers = [];

    const entries = [
      {% assign travels = site.travels %}
      {% for travel in travels %}
        {% if travel.coords %}
          {
            title: {{ travel.title | jsonify }},
            type: {{ travel.type | jsonify }},
            coords: {{ travel.coords | jsonify }},
            url: {{ travel.url | relative_url | jsonify }}
          }{% unless forloop.last %},{% endunless %}
        {% endif %}
      {% endfor %}
    ];

    entries.forEach(entry => {
      const marker = L.marker(entry.coords).addTo(map);
      marker.bindPopup(`<strong>${entry.title}</strong><br><a href="${entry.url}">Read more</a>`);
      marker._type = entry.type;
      markers.push(marker);
    });

    window.filterMap = function(type) {
      markers.forEach(m => {
        const show = type === 'all' || m._type === type;
        const elem = m._icon;
        const shadow = m._shadow;
        if (elem) elem.style.display = show ? '' : 'none';
        if (shadow) shadow.style.display = show ? '' : 'none';
      });
    };
  }
</script>
