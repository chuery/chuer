---
layout: default
title: "& Beyond"
---
other things i like

**Geodesic dome at Half Moon Bay (2025)**  
I built a geodesic dome for my 20th birthday. Inspired by the Buckminster Fuller papers I came across at the Stanford Special Collections Archive.

**19k for 19 (2024)**
I ran 19k on May 19 for my 19th birthday! I did it as a part of Bay2Breakers and added the 7k at Lombard Street...that was not a good idea. I also did not train for this at all and my knees suffered for many months after. 

**Half marathon (2022)**
Back in my rowing days, I erged a half marathon with my good friend Kathryn in the River City Rowing Club boathouse.

**Run to feed the hungry (2021, 2022, 2023, 2024)**
I am a religious turkey trotter.

---
**Traveling**

<div id="map-toggle">
  <button onclick="filterMap('all')">All</button>
  <button onclick="filterMap('physical')">Physical</button>
  <button onclick="filterMap('cerebral')">Cerebral</button>
</div>

<div id="travel-map" style="height: 400px; margin-top: 1em;text-align: center"></div>

<script>
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

    L.tileLayer('https://api.mapbox.com/styles/v1/mapbox/streets-v11/tiles/{z}/{x}/{y}?access_token=pk.eyJ1IjoiY2h1ZXJ5IiwiYSI6ImNtZG56NGJ3bjA3cnQybnBzaHltaDJxYXcifQ.1AKb_ToUJ12wuhrUKKWoew', {
  tileSize: 512,
  zoomOffset: -1,
  attribution: '&copy; OpenStreetMap contributors &copy; <a href="https://www.mapbox.com/">Mapbox</a>'
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
