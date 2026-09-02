<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=yes">
    <title>Nexus Church · future faith</title>
    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        /* ----- RESET & ROOTS ----- */
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body {
            background: #0b0d15;
            color: #eef3fc;
            font-family: 'Inter', sans-serif;
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
        }
        :root {
            --bg-deep: #07080e;
            --glass: rgba(20, 30, 50, 0.55);
            --glass-border: rgba(0, 212, 255, 0.18);
            --accent-cyan: #00d4ff;
            --accent-blue: #4f7dff;
            --accent-glow: #00d4ff55;
            --text-light: #f0f7ff;
            --muted: #a0b4d0;
            --radius-lg: 28px;
            --radius-md: 16px;
            --shadow-glow: 0 20px 40px -12px rgba(0, 180, 255, 0.25);
        }
        a { color: inherit; text-decoration: none; }
        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 24px;
        }
        /* ----- GLASS & FUTURISTIC ELEMENTS ----- */
        .glass-panel {
            background: var(--glass);
            backdrop-filter: blur(12px) saturate(180%);
            -webkit-backdrop-filter: blur(12px) saturate(180%);
            border: 1px solid var(--glass-border);
            box-shadow: var(--shadow-glow);
            border-radius: var(--radius-md);
        }
        .section-title {
            font-family: 'Space Grotesk', sans-serif;
            font-weight: 600;
            font-size: 2.2rem;
            letter-spacing: -0.02em;
            background: linear-gradient(135deg, #e0f0ff, #7abfff);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            display: inline-block;
        }
        .section-sub {
            color: var(--muted);
            font-weight: 400;
            letter-spacing: 0.3px;
            margin-top: 4px;
        }
        /* ----- HEADER (sticky glass) ----- */
        header {
            position: sticky;
            top: 0;
            z-index: 50;
            background: rgba(7, 8, 14, 0.7);
            backdrop-filter: blur(18px) saturate(180%);
            -webkit-backdrop-filter: blur(18px) saturate(180%);
            border-bottom: 1px solid rgba(0, 212, 255, 0.08);
        }
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 14px 0;
            gap: 16px;
            flex-wrap: wrap;
        }
        .brand {
            display: flex;
            align-items: center;
            gap: 12px;
            font-family: 'Space Grotesk', sans-serif;
            font-weight: 700;
            font-size: 1.6rem;
            letter-spacing: -0.5px;
        }
        .brand i {
            color: var(--accent-cyan);
            text-shadow: 0 0 20px var(--accent-glow);
        }
        .brand .accent {
            color: var(--accent-cyan);
        }
        nav.main-nav ul {
            display: flex;
            gap: 6px;
            list-style: none;
            align-items: center;
        }
        nav.main-nav ul li a {
            padding: 8px 14px;
            border-radius: 40px;
            font-weight: 500;
            font-size: 0.95rem;
            transition: 0.2s ease;
            display: flex;
            align-items: center;
            gap: 6px;
            color: var(--muted);
        }
        nav.main-nav ul li a:hover,
        nav.main-nav ul li a.active {
            background: rgba(0, 212, 255, 0.08);
            color: white;
            box-shadow: 0 0 20px rgba(0, 212, 255, 0.05);
        }
        .header-actions {
            display: flex;
            align-items: center;
            gap: 12px;
        }
        .icon-btn {
            background: transparent;
            border: 0;
            color: var(--muted);
            font-size: 1.2rem;
            cursor: pointer;
            padding: 6px 8px;
            border-radius: 40px;
            transition: 0.2s;
        }
        .icon-btn:hover {
            color: white;
            background: rgba(255,255,255,0.02);
        }
        .mobile-toggle {
            display: none;
            background: transparent;
            border: 0;
            color: white;
            font-size: 1.6rem;
            cursor: pointer;
        }
        #mobileMenu {
            background: rgba(7, 8, 14, 0.92);
            backdrop-filter: blur(18px);
            border-top: 1px solid rgba(0, 212, 255, 0.08);
        }
        #mobileMenu ul {
            list-style: none;
            padding: 12px 0;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }
        #mobileMenu ul li a {
            display: block;
            padding: 12px 16px;
            color: var(--muted);
            font-weight: 500;
            border-radius: 12px;
        }
        #mobileMenu ul li a:hover {
            background: rgba(0, 212, 255, 0.05);
            color: white;
        }

        /* ----- HERO (cosmic) ----- */
        .hero-church {
            min-height: 70vh;
            display: flex;
            align-items: center;
            background: 
                radial-gradient(ellipse at 20% 30%, #001d3d 0%, transparent 70%),
                radial-gradient(ellipse at 80% 70%, #002855 0%, transparent 60%),
                linear-gradient(135deg, #080c1a, #0b1428);
            position: relative;
            overflow: hidden;
            border-radius: 0 0 var(--radius-lg) var(--radius-lg);
            margin-bottom: 20px;
        }
        .hero-church::before {
            content: '';
            position: absolute;
            inset: 0;
            background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 800 800" opacity="0.03"><circle cx="400" cy="400" r="300" fill="%2300d4ff"/><circle cx="200" cy="200" r="120" fill="%234f7dff"/><circle cx="650" cy="300" r="160" fill="%2300d4ff"/></svg>') center/cover no-repeat;
            pointer-events: none;
        }
        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 700px;
            padding: 40px 0;
        }
        .hero-church h1 {
            font-family: 'Space Grotesk', sans-serif;
            font-weight: 700;
            font-size: 3.8rem;
            letter-spacing: -0.02em;
            line-height: 1.1;
            background: linear-gradient(to right, #ffffff, #a0d0ff);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-shadow: 0 0 40px rgba(0, 180, 255, 0.2);
        }
        .hero-church p {
            font-size: 1.2rem;
            color: var(--muted);
            margin: 20px 0 32px;
            max-width: 540px;
            backdrop-filter: blur(2px);
        }
        .btn-group {
            display: flex;
            gap: 16px;
            flex-wrap: wrap;
        }
        .btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 12px 28px;
            border-radius: 60px;
            font-weight: 600;
            border: 0;
            cursor: pointer;
            transition: 0.25s ease;
            font-size: 1rem;
        }
        .btn-primary {
            background: var(--accent-cyan);
            color: #0b0d15;
            box-shadow: 0 0 30px rgba(0, 212, 255, 0.2);
        }
        .btn-primary:hover {
            transform: scale(1.02);
            box-shadow: 0 0 50px rgba(0, 212, 255, 0.4);
        }
        .btn-outline {
            background: transparent;
            border: 1.5px solid rgba(255,255,255,0.15);
            color: white;
        }
        .btn-outline:hover {
            background: rgba(255,255,255,0.04);
            border-color: var(--accent-cyan);
        }

        /* ----- SECTIONS (cards) ----- */
        .section {
            padding: 56px 0 32px;
        }
        .grid-2col {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 28px;
        }
        .grid-3col {
            display: grid;
            grid-template-columns: repeat(3,1fr);
            gap: 24px;
        }
        .feature-card {
            background: var(--glass);
            backdrop-filter: blur(8px);
            border: 1px solid rgba(255,255,255,0.02);
            border-radius: var(--radius-md);
            padding: 28px 22px;
            transition: 0.25s ease;
            box-shadow: 0 8px 24px -8px rgba(0,0,0,0.6);
        }
        .feature-card:hover {
            border-color: var(--accent-cyan);
            box-shadow: 0 0 40px rgba(0, 212, 255, 0.06);
            transform: translateY(-4px);
        }
        .feature-card .icon {
            font-size: 2.4rem;
            color: var(--accent-cyan);
            margin-bottom: 14px;
        }
        .feature-card h3 {
            font-family: 'Space Grotesk', sans-serif;
            font-weight: 600;
            font-size: 1.4rem;
            margin-bottom: 8px;
        }
        .feature-card p {
            color: var(--muted);
            font-size: 0.95rem;
        }

        /* ----- SERMON / EVENT (futuristic) ----- */
        .sermon-card {
            background: var(--glass);
            backdrop-filter: blur(8px);
            border-radius: var(--radius-md);
            padding: 0;
            overflow: hidden;
            border: 1px solid rgba(255,255,255,0.02);
            transition: 0.3s;
        }
        .sermon-card:hover {
            border-color: var(--accent-cyan);
            box-shadow: 0 0 40px rgba(0, 212, 255, 0.05);
        }
        .sermon-card .img-wrap {
            height: 180px;
            background: #111a2e;
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--accent-cyan);
            font-size: 3rem;
            background: radial-gradient(circle at 30% 40%, #142a44, #0a111f);
        }
        .sermon-card .body {
            padding: 20px 18px 22px;
        }
        .sermon-card .body h4 {
            font-family: 'Space Grotesk', sans-serif;
            font-weight: 600;
            font-size: 1.2rem;
        }
        .sermon-card .body .meta {
            color: var(--muted);
            font-size: 0.9rem;
            display: flex;
            gap: 16px;
            margin: 8px 0 14px;
        }
        .tag {
            background: rgba(0, 212, 255, 0.08);
            color: var(--accent-cyan);
            padding: 4px 12px;
            border-radius: 40px;
            font-size: 0.75rem;
            font-weight: 600;
            letter-spacing: 0.3px;
            border: 1px solid rgba(0,212,255,0.1);
        }

        /* ----- TESTIMONIALS (carousel) ----- */
        .testimonials-wrap {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 12px 4px 20px;
            scroll-snap-type: x mandatory;
        }
        .testimonial-item {
            min-width: 280px;
            background: var(--glass);
            backdrop-filter: blur(8px);
            padding: 24px 20px;
            border-radius: var(--radius-md);
            border: 1px solid rgba(255,255,255,0.02);
            scroll-snap-align: start;
            flex-shrink: 0;
        }
        .testimonial-item .stars {
            color: #f7b731;
            letter-spacing: 2px;
        }
        .testimonial-item p {
            font-style: italic;
            color: #d0e0f5;
            margin: 12px 0;
        }
        .testimonial-item .author {
            display: flex;
            align-items: center;
            gap: 14px;
        }
        .avatar {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            background: linear-gradient(135deg, var(--accent-cyan), var(--accent-blue));
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: 600;
            color: #0b0d15;
        }

        /* ----- NEWSLETTER (glow) ----- */
        .newsletter-glow {
            background: radial-gradient(circle at 30% 30%, #0a1e3a, #05080f);
            border: 1px solid rgba(0, 212, 255, 0.08);
            border-radius: var(--radius-lg);
            padding: 48px 32px;
            text-align: center;
            box-shadow: 0 0 60px rgba(0, 180, 255, 0.02);
        }
        .newsletter-glow h3 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 2rem;
            font-weight: 600;
        }
        .newsletter-glow .input-group {
            display: flex;
            justify-content: center;
            gap: 10px;
            flex-wrap: wrap;
            margin-top: 20px;
        }
        .newsletter-glow input {
            background: rgba(255,255,255,0.02);
            border: 1px solid rgba(255,255,255,0.06);
            padding: 14px 24px;
            border-radius: 60px;
            min-width: 280px;
            color: white;
            font-size: 1rem;
            outline: none;
            transition: 0.2s;
        }
        .newsletter-glow input:focus {
            border-color: var(--accent-cyan);
            box-shadow: 0 0 30px rgba(0, 212, 255, 0.05);
        }

        /* ----- FOOTER (cyber) ----- */
        footer {
            border-top: 1px solid rgba(255,255,255,0.02);
            padding: 40px 0 28px;
            margin-top: 20px;
            color: var(--muted);
        }
        footer .brand i {
            color: var(--accent-cyan);
        }
        .footer-links {
            display: flex;
            gap: 48px;
            flex-wrap: wrap;
        }
        .footer-links div {
            min-width: 120px;
        }
        .footer-links h5 {
            color: white;
            font-weight: 600;
            margin-bottom: 12px;
            font-family: 'Space Grotesk', sans-serif;
        }
        .footer-links a {
            display: block;
            padding: 4px 0;
            color: var(--muted);
            transition: 0.2s;
        }
        .footer-links a:hover {
            color: white;
        }

        /* ----- RESPONSIVE ----- */
        @media (max-width: 1024px) {
            .grid-2col { grid-template-columns: 1fr; }
            .grid-3col { grid-template-columns: 1fr 1fr; }
        }
        @media (max-width: 768px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: inline-block; }
            .grid-3col { grid-template-columns: 1fr; }
            .hero-church h1 { font-size: 2.4rem; }
            .section-title { font-size: 1.8rem; }
            .newsletter-glow input { min-width: 100%; }
        }
        @media (max-width: 480px) {
            .hero-church h1 { font-size: 2rem; }
            .btn { padding: 10px 20px; }
        }
        /* small utilities */
        .muted { color: var(--muted); }
        .text-center { text-align: center; }
        .mt-4 { margin-top: 24px; }
        .gap-2 { gap: 12px; }
    </style>
</head>
<body>
    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:18px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
                <a class="brand" href="#">
                    <i class="fas fa-church"></i>
                    <span>Nexus<span class="accent">Church</span></span>
                </a>
            </div>
            <nav class="main-nav" id="mainNav">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#sermons"><i class="fas fa-bible"></i> Sermons</a></li>
                    <li><a href="#events"><i class="fas fa-calendar-alt"></i> Events</a></li>
                    <li><a href="#community"><i class="fas fa-users"></i> Community</a></li>
                    <li><a href="#prayer"><i class="fas fa-hands-praying"></i> Prayer</a></li>
                </ul>
            </nav>
            <div class="header-actions">
                <button class="icon-btn" title="Live"><i class="fas fa-broadcast-tower"></i></button>
                <button class="icon-btn" title="Give"><i class="fas fa-hand-holding-heart"></i></button>
                <button class="icon-btn" id="cartBtn" title="Connect"><i class="fas fa-user-circle"></i></button>
            </div>
        </div>
        <!-- mobile menu -->
        <div id="mobileMenu" style="display:none;">
            <div class="container">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#sermons"><i class="fas fa-bible"></i> Sermons</a></li>
                    <li><a href="#events"><i class="fas fa-calendar-alt"></i> Events</a></li>
                    <li><a href="#community"><i class="fas fa-users"></i> Community</a></li>
                    <li><a href="#prayer"><i class="fas fa-hands-praying"></i> Prayer</a></li>
                </ul>
            </div>
        </div>
    </header>

    <main>
        <!-- HERO -->
        <section class="hero-church container">
            <div class="hero-content">
                <div class="tag" style="margin-bottom:12px; display:inline-block;">&#9889; future faith</div>
                <h1>Hope amplified<br>in the digital age</h1>
                <p>Gather, grow, and serve — Nexus Church is a community of believers embracing tomorrow, today. Join our live services, prayer meetings, and discipleship.</p>
                <div class="btn-group">
                    <button class="btn btn-primary" id="liveBtn"><i class="fas fa-play-circle"></i> Watch Live</button>
                    <button class="btn btn-outline" id="visitBtn"><i class="fas fa-map-pin"></i> Visit Us</button>
                </div>
            </div>
        </section>

        <!-- FEATURES (core values) -->
        <section class="section container" id="community">
            <div style="text-align:center; margin-bottom:32px;">
                <span class="section-title">Our foundation</span>
                <p class="section-sub">Rooted in faith, reaching forward</p>
            </div>
            <div class="grid-3col">
                <div class="feature-card">
                    <div class="icon"><i class="fas fa-praying-hands"></i></div>
                    <h3>Worship</h3>
                    <p>Contemporary and traditional worship experiences that connect hearts to God.</p>
                </div>
                <div class="feature-card">
                    <div class="icon"><i class="fas fa-people-arrows"></i></div>
                    <h3>Community</h3>
                    <p>Small groups, youth ministries, and fellowship that build lasting relationships.</p>
                </div>
                <div class="feature-card">
                    <div class="icon"><i class="fas fa-hands-helping"></i></div>
                    <h3>Service</h3>
                    <p>Outreach programs, missions, and local initiatives that make a tangible difference.</p>
                </div>
            </div>
        </section>

        <!-- SERMONS (dynamic) -->
        <section class="section container" id="sermons">
            <div style="display:flex; justify-content:space-between; align-items:center; flex-wrap:wrap; margin-bottom:24px;">
                <div>
                    <span class="section-title">Recent sermons</span>
                    <p class="section-sub">Watch, listen, and be inspired</p>
                </div>
                <a href="#" style="color:var(--accent-cyan); font-weight:500;"><i class="fas fa-arrow-right"></i> All messages</a>
            </div>
            <div class="grid-3col" id="sermonGrid">
                <!-- injected by js -->
            </div>
        </section>

        <!-- EVENTS -->
        <section class="section container" id="events">
            <div style="text-align:center; margin-bottom:28px;">
                <span class="section-title">Upcoming events</span>
                <p class="section-sub">Gather with us in person or online</p>
            </div>
            <div class="grid-2col" id="eventsGrid">
                <!-- injected -->
            </div>
        </section>

        <!-- TESTIMONIALS -->
        <section class="section container">
            <div style="margin-bottom:24px;">
                <span class="section-title">Stories of faith</span>
                <p class="section-sub">Real people, real encounters</p>
            </div>
            <div class="testimonials-wrap" id="testimonialsWrap">
                <!-- injected -->
            </div>
        </section>

        <!-- PRAYER / NEWSLETTER -->
        <section class="section container" id="prayer">
            <div class="newsletter-glow">
                <h3><i class="fas fa-pray" style="color:var(--accent-cyan); margin-right:10px;"></i>Prayer &amp; Updates</h3>
                <p style="color:var(--muted); max-width:540px; margin:10px auto;">Share your prayer requests or subscribe to receive weekly devotions and church news.</p>
                <div class="input-group">
                    <input type="email" id="prayerEmail" placeholder="Your email or prayer request" aria-label="Prayer or email">
                    <button class="btn btn-primary" id="prayerBtn"><i class="fas fa-paper-plane"></i> Send</button>
                </div>
                <div id="prayerMsg" style="margin-top:14px; font-size:0.95rem; color:var(--accent-cyan);"></div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container" style="display:flex; flex-wrap:wrap; justify-content:space-between; gap:28px;">
            <div style="max-width:320px;">
                <div class="brand" style="font-size:1.5rem; margin-bottom:8px;">
                    <i class="fas fa-church"></i> Nexus<span class="accent">Church</span>
                </div>
                <p class="muted" style="font-size:0.95rem;">A future-forward faith community. <br> <span style="color:white;">&#10022; John 3:16</span></p>
                <div style="display:flex; gap:16px; margin-top:14px;">
                    <a href="#"><i class="fab fa-youtube" style="color:var(--accent-cyan);"></i></a>
                    <a href="#"><i class="fab fa-instagram" style="color:var(--accent-cyan);"></i></a>
                    <a href="#"><i class="fab fa-spotify" style="color:var(--accent-cyan);"></i></a>
                </div>
            </div>
            <div class="footer-links">
                <div>
                    <h5>Explore</h5>
                    <a href="#">Sermons</a>
                    <a href="#">Events</a>
                    <a href="#">Give</a>
                </div>
                <div>
                    <h5>Connect</h5>
                    <a href="#">Small Groups</a>
                    <a href="#">Prayer</a>
                    <a href="#">Contact</a>
                </div>
                <div>
                    <h5>About</h5>
                    <a href="#">Our Beliefs</a>
                    <a href="#">Leadership</a>
                    <a href="#">Careers</a>
                </div>
            </div>
        </div>
        <div class="container" style="border-top:1px solid rgba(255,255,255,0.02); margin-top:24px; padding-top:20px; text-align:center; color:var(--muted); font-size:0.9rem;">
            &copy; <span id="year"></span> Nexus Church — built on hope.
        </div>
    </footer>

    <script>
        (function(){
            // --- DATA ---
            const sermons = [
                { title: 'The future of faith', speaker: 'Pastor A. Grace', date: 'May 18, 2026', icon: 'fa-bible' },
                { title: 'Digital discipleship', speaker: 'Pastor M. K.', date: 'May 11, 2026', icon: 'fa-microphone-alt' },
                { title: 'Hope in the age of AI', speaker: 'Dr. S. Light', date: 'May 4, 2026', icon: 'fa-church' }
            ];
            const events = [
                { title: 'Youth Night Live', date: 'Fri, May 22 · 7PM', location: 'Online & Campus', icon: 'fa-users' },
                { title: 'Worship & Prayer', date: 'Sun, May 24 · 10AM', location: 'Main Sanctuary', icon: 'fa-pray' }
            ];
            const testimonials = [
                { name: 'Elena R.', text: 'This community changed my life. I found purpose and connection.', stars: 5 },
                { name: 'David K.', text: 'The sermons are deep, relevant, and full of grace. Highly recommend.', stars: 5 },
                { name: 'Sarah M.', text: 'I love the modern approach while staying true to the gospel.', stars: 4 }
            ];

            // --- RENDER ---
            function renderSermons() {
                const grid = document.getElementById('sermonGrid');
                if(!grid) return;
                grid.innerHTML = sermons.map(s => `
                    <div class="sermon-card">
                        <div class="img-wrap"><i class="fas ${s.icon}"></i></div>
                        <div class="body">
                            <h4>${s.title}</h4>
                            <div class="meta"><span><i class="fas fa-user"></i> ${s.speaker}</span> <span><i class="fas fa-calendar-alt"></i> ${s.date}</span></div>
                            <div><span class="tag">Listen</span> <span class="tag" style="margin-left:6px;">Watch</span></div>
                        </div>
                    </div>
                `).join('');
            }

            function renderEvents() {
                const grid = document.getElementById('eventsGrid');
                if(!grid) return;
                grid.innerHTML = events.map(e => `
                    <div class="feature-card" style="display:flex; align-items:center; gap:20px; flex-wrap:wrap;">
                        <div style="background:rgba(0,212,255,0.04); border-radius:60px; padding:14px 18px; font-size:2.2rem; color:var(--accent-cyan);"><i class="fas ${e.icon}"></i></div>
                        <div style="flex:1;">
                            <h3 style="font-size:1.2rem;">${e.title}</h3>
                            <div class="muted" style="display:flex; gap:18px; flex-wrap:wrap;"><span><i class="far fa-calendar-alt"></i> ${e.date}</span> <span><i class="fas fa-map-pin"></i> ${e.location}</span></div>
                        </div>
                        <button class="btn btn-primary" style="padding:8px 22px; font-size:0.9rem;">Attend</button>
                    </div>
                `).join('');
            }

            function renderTestimonials() {
                const wrap = document.getElementById('testimonialsWrap');
                if(!wrap) return;
                wrap.innerHTML = testimonials.map(t => `
                    <div class="testimonial-item">
                        <div class="stars">${'★'.repeat(t.stars)}${'☆'.repeat(5-t.stars)}</div>
                        <p>“${t.text}”</p>
                        <div class="author">
                            <div class="avatar">${t.name.charAt(0)}</div>
                            <div><strong>${t.name}</strong> <div class="muted" style="font-size:0.8rem;">verified</div></div>
                        </div>
                    </div>
                `).join('');
            }

            // --- UI interactions ---
            document.getElementById('mobileToggle')?.addEventListener('click', function(){
                const menu = document.getElementById('mobileMenu');
                menu.style.display = menu.style.display === 'none' ? 'block' : 'none';
            });

            document.getElementById('prayerBtn')?.addEventListener('click', function(){
                const input = document.getElementById('prayerEmail');
                const msg = document.getElementById('prayerMsg');
                const val = input.value.trim();
                if(!val) { msg.textContent = 'Please share your prayer or email.'; return; }
                msg.textContent = '🙏 Thank you! We are praying with you.';
                input.value = '';
                setTimeout(() => { msg.textContent = ''; }, 4000);
            });

            document.getElementById('liveBtn')?.addEventListener('click', function(){
                alert('🔴 Live stream will begin at 10:00 AM (UTC-4). Stay tuned.');
            });
            document.getElementById('visitBtn')?.addEventListener('click', function(){
                alert('📍 Nexus Church · 123 Faith Ave, New Hope City — all are welcome.');
            });

            // set year
            document.getElementById('year').textContent = new Date().getFullYear();

            // init
            renderSermons();
            renderEvents();
            renderTestimonials();
        })();
    </script>
</body>
</html>
