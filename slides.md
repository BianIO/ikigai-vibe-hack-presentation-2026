---
theme: default
title: Aegis — Community Safety Radar
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
  <div class="kicker">IKIGAI VIBE HACK · URBAN SAFETY</div>
  <h1 class="main-title">Aegis</h1>
  <p class="subtitle">A crowdsourced safety radar that turns a city&#39;s eyes into a live danger map — and routes you around it.</p>
  <div class="hint">Press → / Space to play</div>
</div>

<div class="bg-orbits"></div>

<style>
.title-slide { position: relative; z-index: 2; padding-left: 1rem; }
.slidev-layout.cover, .slidev-page { color: #e8eef7; }
.title-slide .kicker { letter-spacing: .5em; font-size: .78rem; font-weight: 700; color: #2dd4bf; margin-bottom: 1.1rem; }
.title-slide .main-title { font-family: 'Bricolage Grotesque','Manrope',sans-serif; font-size: 6rem; font-weight: 800; line-height: .9; margin: 0; letter-spacing: -.02em; background: linear-gradient(180deg,#ffffff 0%,#9ec7d8 100%); -webkit-background-clip: text; background-clip: text; color: transparent; }
.title-slide .subtitle { margin-top: 1.6rem; max-width: 30ch; font-size: 1.25rem; line-height: 1.45; color: #aebfd6; }
.title-slide .hint { margin-top: 2.6rem; display: inline-block; font-size: .76rem; color: #5b6f8c; border: 1px solid #1e2c45; padding: .4rem 1rem; border-radius: 999px; }
.bg-orbits { position: absolute; inset: 0; z-index: 1; background:
  radial-gradient(60% 80% at 78% 50%, rgba(45,212,191,.16), transparent 60%),
  radial-gradient(40% 60% at 90% 80%, rgba(244,63,94,.12), transparent 60%),
  radial-gradient(120% 120% at 30% 10%, #0d1730 0%, #080d1c 60%, #05080f 100%); }
.bg-orbits::before, .bg-orbits::after { content:''; position:absolute; right:-6%; top:50%; border:1px solid rgba(45,212,191,.18); border-radius:50%; transform:translateY(-50%); }
.bg-orbits::before { width:520px; height:520px; }
.bg-orbits::after { width:820px; height:820px; border-color:rgba(45,212,191,.08); }
</style>

---
transition: fade
class: feat-slide
---

<div class="panel">
  <div class="head">
    <span class="tag">THE NETWORK</span>
    <h2>The crowd is the radar.</h2>
  </div>

<svg viewBox="0 0 800 480" class="viz" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <radialGradient id="heat" cx="50%" cy="50%" r="50%">
      <stop offset="0%" stop-color="#f43f5e" stop-opacity="0.55"/>
      <stop offset="55%" stop-color="#f97316" stop-opacity="0.22"/>
      <stop offset="100%" stop-color="#f97316" stop-opacity="0"/>
    </radialGradient>
    <filter id="glow"><feGaussianBlur stdDeviation="2.2" result="b"/><feMerge><feMergeNode in="b"/><feMergeNode in="SourceGraphic"/></feMerge></filter>
  </defs>

  <!-- radar rings (always on) -->
  <g class="rings" fill="none" stroke="#2dd4bf">
    <circle cx="400" cy="245" r="70"/>
    <circle cx="400" cy="245" r="135"/>
    <circle cx="400" cy="245" r="200"/>
    <circle cx="400" cy="245" r="262"/>
    <line x1="138" y1="245" x2="662" y2="245"/>
    <line x1="400" y1="0" x2="400" y2="480"/>
  </g>

  <!-- rotating sweep (SMIL, always on) -->
  <g transform="translate(400,245)">
    <g>
      <path d="M0 0 L262 0 A262 262 0 0 0 214 -151 Z" fill="#2dd4bf" opacity="0.10"/>
      <line x1="0" y1="0" x2="262" y2="0" stroke="#5eead4" stroke-width="2" opacity="0.85"/>
      <animateTransform attributeName="transform" type="rotate" from="0" to="360" dur="5.5s" repeatCount="indefinite"/>
    </g>
  </g>
  <circle cx="400" cy="245" r="4" fill="#5eead4"/>

  <!-- heat zones (click 4) -->
  <g class="heat" v-click="4">
    <circle cx="305" cy="360" r="80" fill="url(#heat)"/>
    <circle cx="505" cy="155" r="78" fill="url(#heat)"/>
    <circle cx="585" cy="320" r="70" fill="url(#heat)"/>
  </g>

  <!-- community mesh (click 2) -->
  <g class="net" v-click="2" stroke="#38bdf8" stroke-width="1.5" opacity="0.5">
    <line x1="250" y1="140" x2="360" y2="115"/>
    <line x1="360" y1="115" x2="495" y2="135"/>
    <line x1="495" y1="135" x2="585" y2="205"/>
    <line x1="585" y1="205" x2="610" y2="315"/>
    <line x1="610" y1="315" x2="520" y2="395"/>
    <line x1="520" y1="395" x2="400" y2="415"/>
    <line x1="400" y1="415" x2="290" y2="390"/>
    <line x1="290" y1="390" x2="205" y2="300"/>
    <line x1="205" y1="300" x2="230" y2="200"/>
    <line x1="230" y1="200" x2="250" y2="140"/>
    <line x1="345" y1="255" x2="360" y2="115"/>
    <line x1="345" y1="255" x2="290" y2="390"/>
    <line x1="345" y1="255" x2="470" y2="285"/>
    <line x1="470" y1="285" x2="495" y2="135"/>
    <line x1="470" y1="285" x2="520" y2="395"/>
  </g>

  <!-- citizens (click 1) -->
  <g class="people" v-click="1" fill="#7dd3fc">
    <circle cx="250" cy="140" r="5.5"/><circle cx="360" cy="115" r="5.5"/>
    <circle cx="495" cy="135" r="5.5"/><circle cx="585" cy="205" r="5.5"/>
    <circle cx="610" cy="315" r="5.5"/><circle cx="520" cy="395" r="5.5"/>
    <circle cx="400" cy="415" r="5.5"/><circle cx="290" cy="390" r="5.5"/>
    <circle cx="205" cy="300" r="5.5"/><circle cx="230" cy="200" r="5.5"/>
    <circle cx="345" cy="255" r="5.5"/><circle cx="470" cy="285" r="5.5"/>
  </g>

  <!-- hazard pings (click 3) -->
  <g class="hazards" v-click="3">
    <g transform="translate(305,360)">
      <circle class="ping" r="11" fill="#f43f5e"/>
      <circle r="11" fill="#0b1426" stroke="#f43f5e" stroke-width="2.5"/>
      <text x="0" y="4.5" text-anchor="middle" font-size="13" font-weight="800" fill="#f43f5e">!</text>
    </g>
    <g transform="translate(505,155)">
      <circle class="ping" r="11" fill="#f59e0b"/>
      <circle r="11" fill="#0b1426" stroke="#f59e0b" stroke-width="2.5"/>
      <text x="0" y="4.5" text-anchor="middle" font-size="13" font-weight="800" fill="#f59e0b">!</text>
    </g>
    <g transform="translate(585,320)">
      <circle class="ping" r="11" fill="#f43f5e"/>
      <circle r="11" fill="#0b1426" stroke="#f43f5e" stroke-width="2.5"/>
      <text x="0" y="4.5" text-anchor="middle" font-size="13" font-weight="800" fill="#f43f5e">!</text>
    </g>
  </g>
</svg>

  <div class="cap">{{ $clicks >= 4 ? 'Reports become a live, shared danger map.'
     : $clicks >= 3 ? 'Anyone flags a hazard in seconds — a dark spot, a broken light, a hidden camera.'
     : $clicks >= 2 ? 'Connected into one neighborhood watch.'
     : $clicks >= 1 ? 'Every resident is a sensor.'
     : 'A city already has thousands of eyes.' }}</div>
</div>

<style>
.feat-slide { background: radial-gradient(120% 120% at 50% 0%, #0d1730 0%, #080d1c 65%, #05080f 100%); color: #e8eef7; }
.panel { height: 100%; display: flex; flex-direction: column; align-items: center; justify-content: center; gap: .6rem; }
.head { text-align: center; }
.head .tag { font-size: .72rem; letter-spacing: .42em; font-weight: 700; color: #2dd4bf; }
.head h2 { font-family: 'Bricolage Grotesque','Manrope',sans-serif; font-size: 2.3rem; font-weight: 800; margin: .2rem 0 0; letter-spacing: -.01em; }
.viz { width: 100%; max-width: 660px; height: auto; }
.rings { stroke-opacity: .16; }
.rings line { stroke-opacity: .10; }
.cap { font-size: 1.12rem; font-weight: 600; color: #b6c6dd; min-height: 1.5em; text-align: center; max-width: 42ch; }

/* group reveals */
.people, .net, .hazards, .heat { transition: opacity .55s ease, transform .55s ease; }
.people.slidev-vclick-hidden { transform: scale(.9); transform-origin: 400px 245px; }
.heat:not(.slidev-vclick-hidden) { animation: breathe 3.4s ease-in-out infinite; }
@keyframes breathe { 0%,100% { opacity: .85; } 50% { opacity: 1; } }
.ping { transform-box: fill-box; transform-origin: center; }
.hazards:not(.slidev-vclick-hidden) .ping { animation: ping 1.7s ease-out infinite; }
@keyframes ping { 0% { transform: scale(.6); opacity: .6; } 100% { transform: scale(2.6); opacity: 0; } }
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

  <!-- fastest route: drawn at click 3, dimmed at click 5 -->
  <path class="route route-old" :class="{ dim: $clicks >= 5 }" v-click="3" pathLength="1"
    d="M 120 400 L 120 235 L 430 235 L 430 110 L 690 110" stroke="url(#oldGrad)"/>
  <!-- safe route: drawn at click 5 -->
  <path class="route route-new" v-click="5" pathLength="1"
    d="M 120 400 L 580 400 L 580 110 L 690 110" stroke="url(#newGrad)"/>

  <!-- START -->
  <g transform="translate(120,400)"><g class="marker" v-click="1">
    <path d="M0 0 C -16 -26 -16 -36 0 -48 C 16 -36 16 -26 0 0 Z" fill="#10b981" filter="url(#soft)"/>
    <circle cx="0" cy="-35" r="10.5" fill="#ffffff"/><circle cx="0" cy="-35" r="4.5" fill="#10b981"/>
    <text class="lbl" x="0" y="-58" text-anchor="middle">Start</text>
  </g></g>

  <!-- DESTINATION -->
  <g transform="translate(690,110)"><g class="marker" v-click="2">
    <path d="M0 0 C -16 -26 -16 -36 0 -48 C 16 -36 16 -26 0 0 Z" fill="#6366f1" filter="url(#soft)"/>
    <circle cx="0" cy="-35" r="10.5" fill="#ffffff"/>
    <path d="M-4 -40 L-4 -30 M-4 -40 L4 -37 L-4 -34" stroke="#6366f1" stroke-width="2.2" fill="none" stroke-linejoin="round" stroke-linecap="round"/>
    <text class="lbl" x="0" y="-58" text-anchor="middle">Destination</text>
  </g></g>

  <!-- HAZARDS on the fastest route (click 4) -->
  <g transform="translate(120,318)"><g class="marker danger" v-click="4">
    <circle class="pulse" cx="0" cy="-35" r="12" fill="#94a3b8"/>
    <path d="M0 0 C -16 -26 -16 -36 0 -48 C 16 -36 16 -26 0 0 Z" fill="#475569" filter="url(#soft)"/>
    <circle cx="0" cy="-35" r="10.5" fill="#ffffff"/>
    <text x="0" y="-30.5" text-anchor="middle" font-size="13" font-weight="800" fill="#475569">!</text>
    <text class="lbl" x="0" y="-58" text-anchor="middle">Unlit street</text>
  </g></g>

  <g transform="translate(270,235)"><g class="marker danger" v-click="4">
    <circle class="pulse" cx="0" cy="-35" r="12" fill="#94a3b8"/>
    <path d="M0 0 C -16 -26 -16 -36 0 -48 C 16 -36 16 -26 0 0 Z" fill="#334155" filter="url(#soft)"/>
    <circle cx="0" cy="-35" r="10.5" fill="#ffffff"/>
    <text x="0" y="-30.5" text-anchor="middle" font-size="13" font-weight="800" fill="#334155">!</text>
    <text class="lbl" x="0" y="-58" text-anchor="middle">Dark alley</text>
  </g></g>

  <g transform="translate(430,165)"><g class="marker danger" v-click="4">
    <circle class="pulse" cx="0" cy="-35" r="12" fill="#f43f5e"/>
    <path d="M0 0 C -16 -26 -16 -36 0 -48 C 16 -36 16 -26 0 0 Z" fill="#e11d48" filter="url(#soft)"/>
    <circle cx="0" cy="-35" r="10.5" fill="#ffffff"/>
    <text x="0" y="-30.5" text-anchor="middle" font-size="13" font-weight="800" fill="#e11d48">!</text>
    <text class="lbl" x="0" y="-58" text-anchor="middle">Assault report</text>
  </g></g>
</svg>

  <div class="cap">{{ $clicks >= 5 ? 'Aegis reroutes you around every hazard — favoring bright, monitored streets.'
     : $clicks >= 4 ? 'But that route walks you straight past three known dangers.'
     : $clicks >= 3 ? 'A typical map picks the fastest line.'
     : $clicks >= 1 ? 'Same start, same destination.'
     : 'You need to get across town.' }}</div>

  <div class="legend">
    <div class="lg" v-click="3"><span class="sw old"></span>Fastest route · typical maps</div>
    <div class="lg" v-click="5"><span class="sw new"></span>Safe route · Aegis</div>
  </div>
</div>

<style>
.nav-slide { background: radial-gradient(120% 120% at 50% 0%, #0d1730 0%, #080d1c 65%, #05080f 100%); color: #e8eef7; }
.nav-slide .panel { height: 100%; display: flex; flex-direction: column; align-items: center; justify-content: center; gap: .55rem; }
.nav-slide .head { text-align: center; }
.nav-slide .head .tag { font-size: .72rem; letter-spacing: .42em; font-weight: 700; color: #5eead4; }
.nav-slide .head h2 { font-family: 'Bricolage Grotesque','Manrope',sans-serif; font-size: 2.3rem; font-weight: 800; margin: .2rem 0 0; }
.nav-slide .viz { width: 100%; max-width: 720px; height: auto; border-radius: 16px; box-shadow: 0 22px 44px rgba(2,6,23,.45); }
.nav-slide .cap { font-size: 1.1rem; font-weight: 600; color: #b6c6dd; min-height: 1.5em; text-align: center; max-width: 46ch; }

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
const base = import.meta.env.BASE_URL
const shotOk = ref(true)
</script>

<div class="ui-wrap">
  <div class="head">
    <span class="tag">HOW IT WORKS</span>
    <h2>Three taps to safer streets.</h2>
  </div>

  <div class="ui-cols">
    <div class="phone">
      <div class="notch"></div>
      <img v-show="shotOk" :src="base + 'assets/screen.png'" @error="shotOk = false" class="screen" alt="App screen"/>
      <div v-show="!shotOk" class="screen screen-ph">
        <div class="ph-dot"></div>
        <span>Drop your screenshot at<br/><code>slides/assets/screen.png</code></span>
      </div>
    </div>

    <div class="steps">
      <div class="step" v-click="1">
        <span class="n">1</span>
        <div><b>Open your safety radar</b><p>Live hazard zones glow around you — built from neighbors&#39; reports and public open data.</p></div>
      </div>
      <div class="step" v-click="2">
        <span class="n">2</span>
        <div><b>Report in two taps</b><p>Flag a dark alley, a broken light, a hidden camera. Verified reports instantly warn everyone nearby.</p></div>
      </div>
      <div class="step" v-click="3">
        <span class="n">3</span>
        <div><b>Get a Safe Route</b><p>Enter a destination — Aegis routes around danger zones and favors bright, monitored streets.</p></div>
      </div>
      <div class="step" v-click="4">
        <span class="n">4</span>
        <div><b>SOS when it counts</b><p>Hold the button to share your live location with trusted contacts in one move.</p></div>
      </div>
    </div>
  </div>
</div>

<style>
.ui-slide { background: radial-gradient(120% 120% at 80% 0%, #0d1730 0%, #080d1c 65%, #05080f 100%); color: #e8eef7; }
.ui-wrap { height: 100%; display: flex; flex-direction: column; justify-content: center; gap: 1.4rem; padding: 0 1rem; }
.ui-wrap .head .tag { font-size: .72rem; letter-spacing: .42em; font-weight: 700; color: #2dd4bf; }
.ui-wrap .head h2 { font-family: 'Bricolage Grotesque','Manrope',sans-serif; font-size: 2.3rem; font-weight: 800; margin: .2rem 0 0; }
.ui-cols { display: flex; align-items: center; gap: 3rem; }

.phone { flex: none; width: 232px; aspect-ratio: 9 / 19; background: #0b1220; border: 1px solid #20304c; border-radius: 32px; padding: 9px; position: relative; box-shadow: 0 26px 55px rgba(2,6,23,.55); }
.phone .notch { position: absolute; top: 13px; left: 50%; transform: translateX(-50%); width: 84px; height: 17px; background: #0b1220; border-radius: 0 0 12px 12px; z-index: 2; }
.screen { width: 100%; height: 100%; object-fit: cover; border-radius: 25px; display: block; }
.screen-ph { display: flex; flex-direction: column; align-items: center; justify-content: center; gap: 1rem; text-align: center; font-size: .78rem; color: #6b80a0; background: linear-gradient(160deg,#13203a,#0b1426); }
.screen-ph code { color: #2dd4bf; }
.ph-dot { width: 54px; height: 54px; border-radius: 50%; border: 2px dashed #314865; }

.steps { flex: 1; display: flex; flex-direction: column; gap: .9rem; }
.step { display: flex; gap: 1rem; align-items: flex-start; padding: .9rem 1.1rem; background: rgba(255,255,255,.03); border: 1px solid #18253c; border-left: 3px solid #2dd4bf; border-radius: 12px; }
.step .n { flex: none; width: 30px; height: 30px; border-radius: 9px; background: #0e2a2a; color: #5eead4; font-weight: 800; display: flex; align-items: center; justify-content: center; font-size: .95rem; }
.step b { font-size: 1.02rem; font-weight: 700; }
.step p { margin: .2rem 0 0; font-size: .86rem; line-height: 1.4; color: #9fb2cd; }
</style>

---
transition: fade
class: end-slide
---

<div class="h-full flex flex-col items-center justify-center end-wrap">
  <h2 class="end-title">Turning a city&#39;s chatter<br/>into safety.</h2>
  <p class="end-sub">Crowdsourced reports + public open data, mapped in real time by AI — built for Taiwan&#39;s streets.</p>
  <div class="end-foot">Aegis · ikigai vibe hack 2026</div>
</div>

<style>
.end-slide { background: radial-gradient(120% 120% at 50% 100%, #053b34 0%, #081427 60%, #05080f 100%); color: #e8eef7; text-align: center; }
.end-wrap .end-title { font-family: 'Bricolage Grotesque','Manrope',sans-serif; font-size: 3rem; font-weight: 800; line-height: 1.18; margin: 0; }
.end-wrap .end-sub { margin-top: 1.4rem; max-width: 52ch; color: #8fd9c9; font-size: 1.1rem; line-height: 1.5; }
.end-wrap .end-foot { margin-top: 2.4rem; font-size: .76rem; letter-spacing: .32em; color: #4f6b66; font-weight: 700; }
</style>