---
theme: default
title: 路線優化提案
titleTemplate: '%s'
transition: fade-out
mdc: true
fonts:
  sans: 'Noto Sans TC'
  weights: '400,600,700,800'
---

<div class="h-full flex flex-col items-center justify-center title-slide">
  <div class="kicker">ROUTE OPTIMIZATION</div>
  <h1 class="main-title">路線優化提案</h1>
  <p class="subtitle">從現況風險路線，到避開危險的新方案</p>
  <div class="hint">按 → / 空白鍵 逐步播放</div>
</div>

<style>
.title-slide { background: radial-gradient(120% 120% at 50% 0%, #1b2a4a 0%, #0c1426 60%, #070b16 100%); color: #f1f5f9; }
.title-slide .kicker { letter-spacing: .55em; font-size: .8rem; font-weight: 700; color: #5eead4; margin-bottom: 1.2rem; padding-left: .55em; }
.title-slide .main-title { font-size: 4.2rem; font-weight: 800; line-height: 1; margin: 0; background: linear-gradient(180deg,#ffffff,#9fb3d1); -webkit-background-clip: text; background-clip: text; color: transparent; }
.title-slide .subtitle { margin-top: 1.4rem; font-size: 1.15rem; color: #94a3b8; }
.title-slide .hint { margin-top: 3rem; font-size: .8rem; color: #475569; border: 1px solid #1e293b; padding: .4rem 1rem; border-radius: 999px; }
</style>

---
transition: fade
class: map-slide
---

<div class="stage">

<svg viewBox="0 0 800 520" class="map" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <filter id="soft" x="-40%" y="-40%" width="180%" height="180%">
      <feDropShadow dx="0" dy="3" stdDeviation="4" flood-color="#0f172a" flood-opacity="0.18"/>
    </filter>
    <linearGradient id="oldGrad" x1="0" y1="0" x2="1" y2="1">
      <stop offset="0%" stop-color="#fbbf24"/><stop offset="100%" stop-color="#f97316"/>
    </linearGradient>
    <linearGradient id="newGrad" x1="0" y1="0" x2="1" y2="1">
      <stop offset="0%" stop-color="#34d399"/><stop offset="100%" stop-color="#059669"/>
    </linearGradient>
  </defs>

  <!-- map base -->
  <rect x="0" y="0" width="800" height="520" rx="18" fill="#eef2f7"/>

  <!-- city blocks -->
  <g class="blocks">
    <rect x="40"  y="40"  width="130" height="110" rx="8" fill="#e2e8f0"/>
    <rect x="210" y="40"  width="130" height="110" rx="8" fill="#e2e8f0"/>
    <rect x="380" y="40"  width="130" height="110" rx="8" fill="#d7ead9"/>
    <rect x="550" y="40"  width="130" height="110" rx="8" fill="#e2e8f0"/>
    <rect x="40"  y="190" width="130" height="110" rx="8" fill="#e2e8f0"/>
    <rect x="210" y="190" width="130" height="110" rx="8" fill="#cfe0f2"/>
    <rect x="380" y="190" width="130" height="110" rx="8" fill="#e2e8f0"/>
    <rect x="550" y="190" width="130" height="110" rx="8" fill="#e2e8f0"/>
    <rect x="40"  y="340" width="130" height="110" rx="8" fill="#e2e8f0"/>
    <rect x="210" y="340" width="130" height="110" rx="8" fill="#e2e8f0"/>
    <rect x="380" y="340" width="130" height="110" rx="8" fill="#e2e8f0"/>
    <rect x="550" y="340" width="130" height="110" rx="8" fill="#d7ead9"/>
  </g>

  <!-- ROUTES -->
  <!-- old route: drawn at click 3, dimmed at click 5 -->
  <path
    class="route route-old"
    :class="{ dim: $clicks >= 5 }"
    v-click="3"
    pathLength="1"
    d="M 120 430 L 120 250 L 430 250 L 430 120 L 690 120"
    stroke="url(#oldGrad)"
  />
  <!-- new route: drawn at click 5 -->
  <path
    class="route route-new"
    v-click="5"
    pathLength="1"
    d="M 120 430 L 580 430 L 580 120 L 690 120"
    stroke="url(#newGrad)"
  />

  <!-- START pin -->
  <g transform="translate(120,430)">
    <g class="marker" v-click="1">
      <path d="M0 0 C -17 -27 -17 -38 0 -50 C 17 -38 17 -27 0 0 Z" fill="#16a34a" filter="url(#soft)"/>
      <circle cx="0" cy="-37" r="11" fill="#ffffff"/>
      <circle cx="0" cy="-37" r="5" fill="#16a34a"/>
      <text class="lbl" x="0" y="-62" text-anchor="middle">起點</text>
    </g>
  </g>

  <!-- END pin -->
  <g transform="translate(690,120)">
    <g class="marker" v-click="2">
      <path d="M0 0 C -17 -27 -17 -38 0 -50 C 17 -38 17 -27 0 0 Z" fill="#4f46e5" filter="url(#soft)"/>
      <circle cx="0" cy="-37" r="11" fill="#ffffff"/>
      <path d="M-4 -42 L-4 -32 M-4 -42 L4 -39 L-4 -36" stroke="#4f46e5" stroke-width="2.2" fill="none" stroke-linejoin="round" stroke-linecap="round"/>
      <text class="lbl" x="0" y="-62" text-anchor="middle">終點</text>
    </g>
  </g>

  <!-- DARK ALLEY hazard -->
  <g transform="translate(270,250)">
    <g class="marker danger" v-click="4">
      <circle class="pulse" cx="0" cy="-37" r="13" fill="#64748b"/>
      <path d="M0 0 C -17 -27 -17 -38 0 -50 C 17 -38 17 -27 0 0 Z" fill="#475569" filter="url(#soft)"/>
      <circle cx="0" cy="-37" r="11" fill="#ffffff"/>
      <text x="0" y="-32" text-anchor="middle" font-size="14" font-weight="800" fill="#475569">!</text>
      <text class="lbl" x="0" y="-62" text-anchor="middle">暗巷</text>
    </g>
  </g>

  <!-- GANG hazard -->
  <g transform="translate(430,180)">
    <g class="marker danger" v-click="4">
      <circle class="pulse" cx="0" cy="-37" r="13" fill="#ef4444"/>
      <path d="M0 0 C -17 -27 -17 -38 0 -50 C 17 -38 17 -27 0 0 Z" fill="#dc2626" filter="url(#soft)"/>
      <circle cx="0" cy="-37" r="11" fill="#ffffff"/>
      <text x="0" y="-32" text-anchor="middle" font-size="14" font-weight="800" fill="#dc2626">!</text>
      <text class="lbl" x="0" y="-62" text-anchor="middle">幫派</text>
    </g>
  </g>
</svg>

<div class="caption">
  <span class="step">{{ Math.min($clicks, 5) }} / 5</span>
  <span class="cap-text">
    {{ $clicks >= 5 ? '新方案：改道避開暗巷與幫派，安全抵達終點'
     : $clicks >= 4 ? '沿途風險浮現 —— 原路線正好穿過暗巷與幫派'
     : $clicks >= 3 ? '依現況規劃的原始路線'
     : $clicks >= 1 ? '標記起點與終點'
     : '準備出發' }}
  </span>
</div>

<div class="legend">
  <div class="lg" v-click="3"><span class="sw old"></span>原始路線</div>
  <div class="lg" v-click="5"><span class="sw new"></span>新方案路線</div>
</div>

</div>

<style>
.map-slide { background: #f8fafc; }
.stage { height: 100%; display: flex; flex-direction: column; align-items: center; justify-content: center; gap: 1.2rem; }

.map { width: 100%; max-width: 860px; height: auto; filter: drop-shadow(0 18px 30px rgba(15,23,42,.10)); border-radius: 18px; }

/* labels with white halo for readability over the map */
.lbl { font-size: 14px; font-weight: 800; fill: #0f172a; stroke: #ffffff; stroke-width: 3.5px; paint-order: stroke; }

/* marker pop-in (transform on inner group; outer group holds position) */
.marker {
  transform-box: fill-box;
  transform-origin: 50% 100%;
  transition: transform .55s cubic-bezier(.34, 1.56, .64, 1), opacity .35s ease;
}
.marker.slidev-vclick-hidden { transform: translateY(16px) scale(.4); }
.marker:not(.slidev-vclick-hidden) { transform: translateY(0) scale(1); }

/* attention pulse for hazards */
.pulse { transform-box: fill-box; transform-origin: center; opacity: 0; }
.danger:not(.slidev-vclick-hidden) .pulse { animation: pulse 1.7s ease-out infinite; }
@keyframes pulse {
  0%   { transform: scale(.6); opacity: .55; }
  100% { transform: scale(2.4); opacity: 0; }
}

/* route drawing */
.route {
  fill: none;
  stroke-width: 6;
  stroke-linecap: round;
  stroke-linejoin: round;
  stroke-dasharray: 1;
  stroke-dashoffset: 1;
  transition: opacity .4s ease;
}
.route-old { stroke-dasharray: 8 9; }            /* dashed = tentative / current */
.route:not(.slidev-vclick-hidden) {
  stroke-dashoffset: 0;
  transition: stroke-dashoffset 1.15s ease-in-out, opacity .4s ease;
}
.route-old.dim { opacity: .22; }

/* caption */
.caption {
  display: flex; align-items: center; gap: .9rem;
  font-size: 1.15rem; font-weight: 600; color: #1e293b;
  min-height: 1.6em;
}
.caption .step {
  font-size: .8rem; font-weight: 800; letter-spacing: .05em;
  background: #0f172a; color: #fff; padding: .25rem .6rem; border-radius: 999px;
}

/* legend */
.legend { display: flex; gap: 1.6rem; font-size: .85rem; color: #475569; font-weight: 600; }
.legend .lg { display: flex; align-items: center; gap: .5rem; }
.legend .sw { width: 26px; height: 5px; border-radius: 3px; display: inline-block; }
.legend .sw.old { background: linear-gradient(90deg,#fbbf24,#f97316); }
.legend .sw.new { background: linear-gradient(90deg,#34d399,#059669); }
</style>

---
transition: fade
---

<div class="h-full flex flex-col items-center justify-center end-slide">
  <h2 class="end-title">同樣的起點與終點<br/>更安全的抵達方式</h2>
  <p class="end-sub">繞開暗巷與幫派盤據的路段，這就是我們的提案。</p>
</div>

<style>
.end-slide { background: radial-gradient(120% 120% at 50% 100%, #064e3b 0%, #0c1426 65%, #070b16 100%); color: #f1f5f9; text-align: center; }
.end-slide .end-title { font-size: 2.8rem; font-weight: 800; line-height: 1.25; margin: 0; }
.end-slide .end-sub { margin-top: 1.4rem; color: #6ee7b7; font-size: 1.05rem; }
</style>
