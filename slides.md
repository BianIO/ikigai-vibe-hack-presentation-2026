---
theme: default
title: LumiWay — Community Safety Map
titleTemplate: '%s'
transition: fade-out
mdc: true
routerMode: hash
fonts:
  sans: 'Manrope'
  serif: 'Bricolage Grotesque'
  weights: '400,500,600,700,800'
  provider: google
---

<div class="h-full flex flex-col justify-center title-slide">
  <div class="kicker">IKIGAI VIBE HACK · COMMUNITY SAFETY</div>
  <h1 class="main-title">LumiWay</h1>
  <p class="subtitle">See the risk.<br/>Light the way.</p>
  <p class="tagline">A crowdsourced safety map for the whole city.</p>
  <div class="hint">Press → / Space to play</div>
</div>

<div class="bg-orbits"></div>

<style>
.title-slide { position: relative; z-index: 2; padding-left: 1rem; }
.title-slide .kicker { letter-spacing: .5em; font-size: .78rem; font-weight: 700; color: #fbbf24; margin-bottom: 1.1rem; }
.title-slide .main-title { font-family: 'Bricolage Grotesque','Manrope',sans-serif; font-size: 6rem; font-weight: 800; line-height: .9; margin: 0; letter-spacing: -.02em; background: linear-gradient(180deg,#ffffff 0%,#ffe7a3 100%); -webkit-background-clip: text; background-clip: text; color: transparent; }
.title-slide .subtitle { margin-top: 1.6rem; font-family: 'Bricolage Grotesque','Manrope',sans-serif; font-size: 2.1rem; font-weight: 700; line-height: 1.15; letter-spacing: -.01em; color: #ffffff; }
.title-slide .tagline { margin-top: .8rem; font-size: 1rem; color: #8aa0bd; }
.title-slide .hint { margin-top: 2.6rem; display: inline-block; font-size: .76rem; color: #5b6f8c; border: 1px solid #1e2c45; padding: .4rem 1rem; border-radius: 999px; }
.bg-orbits { position: absolute; inset: 0; z-index: 1; background:
  radial-gradient(60% 80% at 80% 45%, rgba(251,191,36,.16), transparent 60%),
  radial-gradient(45% 60% at 88% 80%, rgba(45,212,191,.12), transparent 60%),
  radial-gradient(120% 120% at 30% 10%, #0d1730 0%, #080d1c 60%, #05080f 100%); }
.bg-orbits::before, .bg-orbits::after { content:''; position:absolute; right:-6%; top:48%; border:1px solid rgba(251,191,36,.16); border-radius:50%; transform:translateY(-50%); }
.bg-orbits::before { width:520px; height:520px; }
.bg-orbits::after { width:820px; height:820px; border-color:rgba(45,212,191,.08); }
</style>

---
transition: fade
class: crowd-slide
---

<div class="panel">
  <div class="head">
    <span class="tag">THE CROWD</span>
    <h2>Many eyes, one map.</h2>
  </div>

<svg viewBox="0 0 800 460" class="viz" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <filter id="soft2" x="-40%" y="-40%" width="180%" height="180%">
      <feDropShadow dx="0" dy="2" stdDeviation="3" flood-color="#020617" flood-opacity="0.45"/>
    </filter>
  </defs>

  <!-- shared map card (always on) -->
  <g>
    <rect x="262" y="150" width="276" height="170" rx="14" fill="#0e1a30" stroke="#2dd4bf" stroke-opacity="0.25"/>
    <g stroke="#1c2c47" stroke-width="1">
      <line x1="262" y1="205" x2="538" y2="205"/>
      <line x1="262" y1="262" x2="538" y2="262"/>
      <line x1="355" y1="150" x2="355" y2="320"/>
      <line x1="448" y1="150" x2="448" y2="320"/>
    </g>
    <text x="400" y="138" text-anchor="middle" class="card-tag">SHARED SAFETY MAP</text>
  </g>

  <!-- collected reports land on the map (click 3) -->
  <g class="collect" v-click="3">
    <g stroke="#fbbf24" stroke-opacity="0.45" stroke-width="1.5" stroke-dasharray="4 4">
      <line x1="158" y1="83" x2="322" y2="196"/>
      <line x1="642" y1="83" x2="470" y2="190"/>
      <line x1="158" y1="372" x2="352" y2="276"/>
      <line x1="642" y1="372" x2="486" y2="266"/>
    </g>
    <g fill="#0b1426">
      <g transform="translate(322,196)"><circle r="9" stroke="#f43f5e" stroke-width="2.5"/><text y="4" text-anchor="middle" font-size="11" font-weight="800" fill="#f43f5e">!</text></g>
      <g transform="translate(470,190)"><circle r="9" stroke="#f59e0b" stroke-width="2.5"/><text y="4" text-anchor="middle" font-size="11" font-weight="800" fill="#f59e0b">!</text></g>
      <g transform="translate(352,276)"><circle r="9" stroke="#f59e0b" stroke-width="2.5"/><text y="4" text-anchor="middle" font-size="11" font-weight="800" fill="#f59e0b">!</text></g>
      <g transform="translate(486,266)"><circle r="9" stroke="#f43f5e" stroke-width="2.5"/><text y="4" text-anchor="middle" font-size="11" font-weight="800" fill="#f43f5e">!</text></g>
    </g>
  </g>

  <!-- citizens (click 1) -->
  <g class="people" v-click="1" fill="#7dd3fc">
    <g transform="translate(140,95)"><circle cx="0" cy="-12" r="9"/><path d="M-14 16 C -14 -1 14 -1 14 16 Z"/></g>
    <g transform="translate(660,95)"><circle cx="0" cy="-12" r="9"/><path d="M-14 16 C -14 -1 14 -1 14 16 Z"/></g>
    <g transform="translate(140,360)"><circle cx="0" cy="-12" r="9"/><path d="M-14 16 C -14 -1 14 -1 14 16 Z"/></g>
    <g transform="translate(660,360)"><circle cx="0" cy="-12" r="9"/><path d="M-14 16 C -14 -1 14 -1 14 16 Z"/></g>
  </g>

  <!-- each citizen reports a hazard (click 2) -->
  <g class="reports" v-click="2">
    <g class="rb" transform="translate(162,72)"><circle r="11" fill="#0b1426" stroke="#f43f5e" stroke-width="2.5" filter="url(#soft2)"/><text y="4.5" text-anchor="middle" font-size="13" font-weight="800" fill="#f43f5e">!</text></g>
    <g class="rb" transform="translate(638,72)"><circle r="11" fill="#0b1426" stroke="#f59e0b" stroke-width="2.5" filter="url(#soft2)"/><text y="4.5" text-anchor="middle" font-size="13" font-weight="800" fill="#f59e0b">!</text></g>
    <g class="rb" transform="translate(162,337)"><circle r="11" fill="#0b1426" stroke="#f59e0b" stroke-width="2.5" filter="url(#soft2)"/><text y="4.5" text-anchor="middle" font-size="13" font-weight="800" fill="#f59e0b">!</text></g>
    <g class="rb" transform="translate(638,337)"><circle r="11" fill="#0b1426" stroke="#f43f5e" stroke-width="2.5" filter="url(#soft2)"/><text y="4.5" text-anchor="middle" font-size="13" font-weight="800" fill="#f43f5e">!</text></g>
  </g>
</svg>

  <div class="cap">{{ $clicks >= 3 ? 'Every report lands on one shared safety map.'
     : $clicks >= 2 ? 'Quickly report risks like dark alleys or blind spots.'
     : $clicks >= 1 ? 'But the whole neighborhood is watching.'
     : 'Risks hide in plain sight.' }}</div>
</div>

<style>
.crowd-slide { background: radial-gradient(120% 120% at 50% 0%, #0d1730 0%, #080d1c 65%, #05080f 100%); color: #e8eef7; }
.crowd-slide .panel { height: 100%; display: flex; flex-direction: column; align-items: center; justify-content: center; gap: .6rem; }
.crowd-slide .head { text-align: center; }
.crowd-slide .head .tag { font-size: .72rem; letter-spacing: .42em; font-weight: 700; color: #fbbf24; }
.crowd-slide .head h2 { font-family: 'Bricolage Grotesque','Manrope',sans-serif; font-size: 2.3rem; font-weight: 800; margin: .2rem 0 0; letter-spacing: -.01em; }
.crowd-slide .viz { width: 100%; max-width: 640px; height: auto; }
.card-tag { font-size: 11px; letter-spacing: .25em; font-weight: 700; fill: #4a5f7e; }
.crowd-slide .cap { font-size: 1.12rem; font-weight: 600; line-height: 1.3; color: #b6c6dd; height: 2.8em; flex: none; overflow: hidden; display: flex; align-items: center; justify-content: center; text-align: center; max-width: 44ch; }

.people, .reports, .collect { transition: opacity .55s ease, transform .55s ease; }
.reports { transform-box: fill-box; transition: opacity .5s ease; }
.reports.slidev-vclick-hidden .rb { transform: translateY(8px) scale(.5); }
.rb { transition: transform .5s cubic-bezier(.34,1.56,.64,1); transform-box: fill-box; transform-origin: center; }
.collect.slidev-vclick-hidden { transform: scale(.96); transform-origin: 400px 235px; }
</style>

---
transition: fade
class: nav-slide
---

<script setup>
import streetUrl from './assets/street.png'
</script>

<div class="panel">
  <div class="head">
    <span class="tag">SAFE NAVIGATION</span>
    <h2>Fastest isn&#39;t safest.</h2>
  </div>

<svg viewBox="0 0 800 470" class="viz" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <filter id="soft" x="-40%" y="-40%" width="180%" height="180%">
      <feDropShadow dx="0" dy="3" stdDeviation="4" flood-color="#020617" flood-opacity="0.4"/>
    </filter>
    <linearGradient id="oldGrad" x1="0" y1="0" x2="1" y2="1">
      <stop offset="0%" stop-color="#fbbf24"/><stop offset="100%" stop-color="#f97316"/>
    </linearGradient>
    <linearGradient id="newGrad" x1="0" y1="0" x2="1" y2="1">
      <stop offset="0%" stop-color="#5eead4"/><stop offset="100%" stop-color="#10b981"/>
    </linearGradient>
    <clipPath id="mapClip"><rect x="0" y="0" width="800" height="470" rx="16"/></clipPath>
  </defs>

  <image :href="streetUrl" x="0" y="0" width="800" height="470"
         preserveAspectRatio="xMidYMid slice" clip-path="url(#mapClip)"/>
  <rect x="0" y="0" width="800" height="470" rx="16" fill="#05080f" opacity="0.28"/>

  <!-- fastest route: drawn at click 3, dimmed at click 4 -->
  <path class="route route-old" :class="{ dim: $clicks >= 4 }" v-click="3" pathLength="1"
    d="M 150 400 L 150 320 L 230 320 L 230 235 L 395 235 L 395 160 L 470 160 L 470 110 L 507 110" stroke="url(#oldGrad)"/>
  <!-- safe route: drawn at click 4 -->
  <path class="route route-new" v-click="4" pathLength="1"
    d="M 150 400 L 560 400 L 560 150 L 507 110" stroke="url(#newGrad)"/>

  <!-- HAZARDS first (click 1) -->
  <g transform="translate(230,320)"><g class="marker danger" v-click="1">
    <circle class="pulse" cx="0" cy="-35" r="12" fill="#3b82f6"/>
    <path d="M0 0 C -16 -26 -16 -36 0 -48 C 16 -36 16 -26 0 0 Z" fill="#2563eb" filter="url(#soft)"/>
    <circle cx="0" cy="-35" r="10.5" fill="#ffffff"/>
    <path d="M-6.5 -35 Q0 -41 6.5 -35 Q0 -29 -6.5 -35 Z" fill="none" stroke="#2563eb" stroke-width="1.6"/>
    <circle cx="0" cy="-35" r="2" fill="#2563eb"/>
    <text class="lbl" x="0" y="-58" text-anchor="middle">Blind spot</text>
  </g></g>

  <g transform="translate(395,235)"><g class="marker danger" v-click="1">
    <circle class="pulse" cx="0" cy="-35" r="12" fill="#f43f5e"/>
    <path d="M0 0 C -16 -26 -16 -36 0 -48 C 16 -36 16 -26 0 0 Z" fill="#e11d48" filter="url(#soft)"/>
    <circle cx="0" cy="-35" r="10.5" fill="#ffffff"/>
    <text x="0" y="-29.5" text-anchor="middle" font-size="18" font-weight="800" fill="#e11d48">+</text>
    <text class="lbl" x="0" y="-58" text-anchor="middle">Injury</text>
  </g></g>

  <g transform="translate(470,160)"><g class="marker danger" v-click="1">
    <circle class="pulse" cx="0" cy="-35" r="12" fill="#3b82f6"/>
    <path d="M0 0 C -16 -26 -16 -36 0 -48 C 16 -36 16 -26 0 0 Z" fill="#2563eb" filter="url(#soft)"/>
    <circle cx="0" cy="-35" r="10.5" fill="#ffffff"/>
    <text x="0" y="-30.5" text-anchor="middle" font-size="13" font-weight="800" fill="#2563eb">!</text>
    <text class="lbl" x="0" y="-58" text-anchor="middle">Hazard</text>
  </g></g>

  <!-- START (click 2) -->
  <g transform="translate(150,400)"><g class="marker" v-click="2">
    <path d="M0 0 C -16 -26 -16 -36 0 -48 C 16 -36 16 -26 0 0 Z" fill="#10b981" filter="url(#soft)"/>
    <circle cx="0" cy="-35" r="10.5" fill="#ffffff"/><circle cx="0" cy="-35" r="4.5" fill="#10b981"/>
    <text class="lbl" x="0" y="-58" text-anchor="middle">Start</text>
  </g></g>

  <!-- DESTINATION (click 2) -->
  <g transform="translate(507,110)"><g class="marker" v-click="2">
    <path d="M0 0 C -16 -26 -16 -36 0 -48 C 16 -36 16 -26 0 0 Z" fill="#6366f1" filter="url(#soft)"/>
    <circle cx="0" cy="-35" r="10.5" fill="#ffffff"/>
    <path d="M-4 -40 L-4 -30 M-4 -40 L4 -37 L-4 -34" stroke="#6366f1" stroke-width="2.2" fill="none" stroke-linejoin="round" stroke-linecap="round"/>
    <text class="lbl" x="0" y="-58" text-anchor="middle">Destination</text>
  </g></g>
</svg>

  <div class="cap">{{ $clicks >= 4 ? 'LumiWay finds the safest, brightest route.'
     : $clicks >= 3 ? 'A standard map sends you the fastest way, straight pass them.'
     : $clicks >= 2 ? 'You need to walk from here to there.'
     : $clicks >= 1 ? 'Reported risks here: an injury, a blind spot, and a hazard.'
     : 'The community has already mapped the risks here.' }}</div>

  <div class="legend">
    <div class="lg" v-click="3"><span class="sw old"></span>Fastest route · typical maps</div>
    <div class="lg" v-click="4"><span class="sw new"></span>Safe route · LumiWay</div>
  </div>
</div>

<style>
.nav-slide { background: radial-gradient(120% 120% at 50% 0%, #0d1730 0%, #080d1c 65%, #05080f 100%); color: #e8eef7; }
.nav-slide .panel { height: 100%; display: flex; flex-direction: column; align-items: center; justify-content: center; gap: .55rem; }
.nav-slide .head { text-align: center; }
.nav-slide .head .tag { font-size: .72rem; letter-spacing: .42em; font-weight: 700; color: #5eead4; }
.nav-slide .head h2 { font-family: 'Bricolage Grotesque','Manrope',sans-serif; font-size: 2.3rem; font-weight: 800; margin: .2rem 0 0; }
.nav-slide .viz { width: 100%; max-width: 720px; height: auto; border-radius: 16px; box-shadow: 0 22px 44px rgba(2,6,23,.45); }
.nav-slide .cap { font-size: 1.1rem; font-weight: 600; line-height: 1.3; color: #b6c6dd; height: 2.8em; flex: none; overflow: hidden; display: flex; align-items: center; justify-content: center; text-align: center; max-width: 48ch; }

.lbl { font-size: 13px; font-weight: 800; fill: #f1f5f9; stroke: #0b1426; stroke-width: 3.2px; paint-order: stroke; }
.marker { transform-box: fill-box; transform-origin: 50% 100%; transition: transform .55s cubic-bezier(.34,1.56,.64,1), opacity .35s ease; }
.marker.slidev-vclick-hidden { transform: translateY(16px) scale(.4); }
.marker:not(.slidev-vclick-hidden) { transform: translateY(0) scale(1); }
.pulse { transform-box: fill-box; transform-origin: center; opacity: 0; }
.danger:not(.slidev-vclick-hidden) .pulse { animation: pulse 1.7s ease-out infinite; }
@keyframes pulse { 0% { transform: scale(.6); opacity: .55; } 100% { transform: scale(2.4); opacity: 0; } }
.route { fill: none; stroke-width: 6; stroke-linecap: round; stroke-linejoin: round; stroke-dasharray: 1; stroke-dashoffset: 1; transition: opacity .4s ease; }
.route-old { stroke-dasharray: 9 9; }
.route:not(.slidev-vclick-hidden) { stroke-dashoffset: 0; transition: stroke-dashoffset 1.15s ease-in-out, opacity .4s ease; }
.route-old.dim { opacity: .25; }
.legend { display: flex; gap: 1.6rem; font-size: .82rem; color: #9fb2cd; font-weight: 600; }
.legend .lg { display: flex; align-items: center; gap: .5rem; }
.legend .sw { width: 26px; height: 5px; border-radius: 3px; }
.legend .sw.old { background: linear-gradient(90deg,#fbbf24,#f97316); }
.legend .sw.new { background: linear-gradient(90deg,#5eead4,#10b981); }
</style>

---
transition: fade
class: ui-slide
---

<script setup>
import { ref } from 'vue'
import reportImg from './assets/report.jpg'

const imgOk = ref(true)
</script>

<div class="ui-wrap">
  <div class="head">
    <span class="tag">USER INTELLIGENCE</span>
    <h2>Interactive Safety Map</h2>
  </div>

  <div class="device">
    <div class="phone">
      <div class="notch"></div>
      <img 
        v-show="imgOk" 
        :src="reportImg" 
        class="screen" 
        alt="LumiWay Report UI"
        @error="imgOk = false"
      />
      <div v-show="!imgOk" class="screen screen-ph">
        <div class="ph-dot"></div>
        <span>Missing: assets/report.jpg</span>
      </div>
    </div>
    <div class="hot l h-map" v-click="1">
      <span class="dot">1</span><span class="lead"></span>
      <div class="callout">
        <b>Safety Awareness</b>
      </div>
    </div>
    <div class="hot r h-btn" v-click="1">
      <span class="dot">2</span><span class="lead"></span>
      <div class="callout">
        <b>Instant Reporting</b>
      </div>
    </div>
  </div>
</div>

<style scoped>
.ui-slide { background: radial-gradient(120% 120% at 80% 0%, #0d1730 0%, #080d1c 65%, #05080f 100%); color: #e8eef7; }
.ui-wrap { height: 100%; display: flex; flex-direction: column; align-items: center; justify-content: center; gap: 1.2rem; }
.ui-wrap .head { text-align: center; }
.ui-wrap .head .tag { font-size: .72rem; letter-spacing: .42em; font-weight: 700; color: #fbbf24; }
.ui-wrap .head h2 { font-family: 'Bricolage Grotesque','Manrope',sans-serif; font-size: 2.2rem; font-weight: 800; margin: .2rem 0 0; }

.device { position: relative; width: 200px; }
.phone { width: 200px; aspect-ratio: 9 / 19; background: #0b1220; border: 1px solid #20304c; border-radius: 30px; padding: 8px; position: relative; box-shadow: 0 26px 55px rgba(2,6,23,.55); }
.phone .notch { position: absolute; top: 12px; left: 50%; transform: translateX(-50%); width: 74px; height: 16px; background: #0b1220; border-radius: 0 0 11px 11px; z-index: 2; }
.screen { width: 100%; height: 100%; object-fit: contain; border-radius: 23px; display: block; }
.screen-ph { display: flex; flex-direction: column; align-items: center; justify-content: center; gap: .9rem; text-align: center; font-size: .72rem; color: #6b80a0; background: #13203a; border-radius: 23px; }

.hot { position: absolute; display: flex; align-items: center; width: 260px; pointer-events: none; }
.hot .dot { flex: none; width: 26px; height: 26px; border-radius: 50%; background: #fbbf24; color: #1a1407; font-weight: 800; font-size: .8rem; display: flex; align-items: center; justify-content: center; box-shadow: 0 0 0 4px rgba(251,191,36,.18); }
.hot .lead { flex: none; width: 25px; height: 2px; background: linear-gradient(90deg,#fbbf24,transparent); }
.hot .callout { background: rgba(13, 23, 48, 0.85); backdrop-filter: blur(8px); border: 1px solid #20304c; border-radius: 11px; padding: .6rem .8rem; box-shadow: 0 10px 20px rgba(0,0,0,0.3); }
.hot .callout b { font-size: .92rem; font-weight: 700; color: #ffffff; }
.hot .callout p { margin: .15rem 0 0; font-size: .76rem; line-height: 1.35; color: #9fb2cd; }

/* Map Icons (Mid-Left) */
.hot.l { right: calc(100% - 20px); flex-direction: row-reverse; text-align: right; }
.hot.l .lead { background: linear-gradient(270deg,#fbbf24,transparent); }
.h-map { top: 45%; }

/* Report Button (Bottom-Right) */
.hot.r { left: calc(100% - 20px); }
.h-btn { top: 70%; }
</style>

---
transition: fade
class: ui-slide
---

<script setup>
import { ref } from 'vue'
// Assumes you have saved image_1.png as nav.jpg in your assets folder
import navImg from './assets/nav.jpg'

const imgOk = ref(true)
</script>

<div class="ui-wrap">
  <div class="head">
    <span class="tag">ALGORITHMIC SAFETY</span>
    <h2>Optimized Navigation</h2>
  </div>

  <div class="device">
    <div class="phone">
      <div class="notch"></div>
      <img 
        v-show="imgOk" 
        :src="navImg" 
        class="screen" 
        alt="LumiWay Navigation UI"
        @error="imgOk = false"
      />
      <div v-show="!imgOk" class="screen screen-ph">
        <div class="ph-dot"></div>
        <span>Missing: assets/nav.jpg</span>
      </div>
    </div>
    <div class="hot l h-mitigate" v-click="1">
      <span class="dot">1</span><span class="lead"></span>
      <div class="callout">
        <b>Threat Mitigation</b>
      </div>
    </div>
    <div class="hot r h-route" v-click="1">
      <span class="dot">2</span><span class="lead"></span>
      <div class="callout">
        <b>Live Updates</b>
      </div>
    </div>
  </div>
</div>

<style scoped>
/* Scoped styles ensure positions don't leak between slides */
.ui-slide { background: radial-gradient(120% 120% at 80% 0%, #0d1730 0%, #080d1c 65%, #05080f 100%); color: #e8eef7; }
.ui-wrap { height: 100%; display: flex; flex-direction: column; align-items: center; justify-content: center; gap: 1.2rem; }
.ui-wrap .head { text-align: center; }
.ui-wrap .head .tag { font-size: .72rem; letter-spacing: .42em; font-weight: 700; color: #fbbf24; }
.ui-wrap .head h2 { font-family: 'Bricolage Grotesque','Manrope',sans-serif; font-size: 2.2rem; font-weight: 800; margin: .2rem 0 0; }

.device { position: relative; width: 200px; }
.phone { width: 200px; aspect-ratio: 9 / 19; background: #0b1220; border: 1px solid #20304c; border-radius: 30px; padding: 8px; position: relative; box-shadow: 0 26px 55px rgba(2,6,23,.55); }
.phone .notch { position: absolute; top: 12px; left: 50%; transform: translateX(-50%); width: 74px; height: 16px; background: #0b1220; border-radius: 0 0 11px 11px; z-index: 2; }
.screen { width: 100%; height: 100%; object-fit: contain; border-radius: 23px; display: block; }
.screen-ph { display: flex; align-items: center; justify-content: center; text-align: center; font-size: .7rem; color: #6b80a0; background: #13203a; border-radius: 23px; }

.hot { position: absolute; display: flex; align-items: center; width: 260px; pointer-events: none; }
.hot .dot { flex: none; width: 26px; height: 26px; border-radius: 50%; background: #fbbf24; color: #1a1407; font-weight: 800; display: flex; align-items: center; justify-content: center; }
.hot .lead { flex: none; width: 25px; height: 2px; background: linear-gradient(90deg,#fbbf24,transparent); }
.hot .callout { background: rgba(13, 23, 48, 0.85); backdrop-filter: blur(8px); border: 1px solid #20304c; border-radius: 11px; padding: .6rem .8rem; }
.hot .callout b { font-size: .92rem; font-weight: 700; }
.hot .callout p { margin: .15rem 0 0; font-size: .76rem; line-height: 1.35; color: #9fb2cd; }

/* Positioning (L) towards the top path */
.hot.l { right: calc(100% - 20px); flex-direction: row-reverse; text-align: right; }
.hot.l .lead { background: linear-gradient(270deg,#fbbf24,transparent); }
.h-mitigate { top: 35%; }

/* Positioning (R) towards the center map pins */
.hot.r { left: calc(100% - 20px); }
.h-route { top: 70%; }
</style>