# SkillBridge — Micro-Freelancing Platform

> Connecting Student Skills with Local Opportunities  
> Prepared for **Project Better Tomorrow — Pathway B (Fresh Discovery Track)**  
> Based on **SkillBridge PRD v1.0** (`SkillBridge_PRD.md`)

---

## 🌟 Overview

**SkillBridge** is a purpose-built micro-freelancing platform connecting college students who possess marketable digital skills (graphic design, video editing, photography, web design, programming, PPT creation, content writing, social media) to small, short-term local tasks and campus deliverables.

Unlike large, high-friction platforms (Upwork, Fiverr) designed for established professionals with extensive review histories, SkillBridge provides:
1. **Zero Cold-Start Penalty**: Immediate local visibility on small campus tasks.
2. **High-Trust Gating**: Service providers verify their identity and age (18+) via student ID proof.
3. **Bite-Sized Opportunities**: Fast turnaround micro-tasks with transparent budgets in ₹.

---

## 🎯 PRD Traceability & Feature Mapping

| PRD Section | Requirement | Implementation in SkillBridge Web App |
|---|---|---|
| **§1 & §2** | Problem Statement & Narrow Scope | Micro-opportunity board (posters, reels, decks, small sites) with clear educational context. |
| **§3 & §4** | Personas (Aisha & Rohan) | Dedicated student and customer onboarding paths, testimonial pillars, and dual workflow views. |
| **§5 & §6** | End-to-End User Flows | Complete sign-up, verification, skill selection, feed matching, apply/hire, and confirmation flows. |
| **§7.1** | Authentication & Role Separation | Separate Customer vs Service Provider tabs with **strictly independent form states** (no field bleed). |
| **§7.1** | Age & ID Gating (18+) | Providers must provide Date of Birth (blocked if < 18) and upload an ID proof file. |
| **§7.2** | Simulated ID Verification | Interactive visual scanner: document upload → anti-tamper heuristics → age confirmation → verified badge issued. |
| **§7.3** | Fixed 8 Skills Selection | 8 PRD skills (Design, Video, Photo, Web, Code, PPT, Writing, Social Media) with reactive selection counter. |
| **§7.4** | Feed & Matching Engine | Dynamic filtering matching student skills to gigs, or customer needs to verified student talent; empty state fallback. |
| **§7.5** | Apply & Hire Flows | Modal with read-only task details, custom rate bids (₹), pitch textarea, and client deadline inputs. |
| **§7.6** | Match & Confirmation | Celebratory confirmation screen with falling confetti, summary card, and Activity Center integration. |
| **§8.0** | Explicit Limitations & Roadmap | Dedicated "Trust & Safety" section and PRD Spec Drawer detailing what production eKYC / DigiLocker would entail. |

---

## 🚀 How to Run the Website

### Option 1: Direct File Launch (Zero Dependencies)
Double-click `index.html` or open `C:\Users\user\.gemini\antigravity\scratch\skillbridge\index.html` in any web browser (Google Chrome, Microsoft Edge, Firefox, Safari).

### Option 2: Local HTTP Server (PowerShell)
You can also launch a local preview server:
```powershell
cd C:\Users\user\.gemini\antigravity\scratch\skillbridge
python -m http.server 8080
```
Then visit `http://localhost:8080` in your web browser.

---

## 📁 Project Architecture

```
skillbridge/
├── index.html              # Main responsive web platform & interactive PRD sandbox
├── css/
│   └── styles.css          # Editorial typography (Fraunces + Space Grotesk), laser scan & pin badges
├── js/
│   ├── data.js             # 8 Skills, campus micro-gigs, student talent directory, PRD specifications
│   ├── state.js            # Reactive state, independent form buffers, age calculator, activity log
│   ├── verification.js     # Multi-stage simulated ID verification pipeline with laser scanner
│   └── app.js              # Controllers for auth, skills picker, marketplace, modals, confetti & drawers
└── README.md               # Complete project documentation and PRD traceability matrix
```

---

## 💡 Key Highlights

- **Dual View Switcher**: Switch between **Full Responsive Web View** and **Interactive Phone Frame View** (paying homage to the mobile mockup).
- **PRD Compliance Inspector Drawer**: Click the `📄 PRD Spec` button in the top bar to inspect how every PRD requirement was satisfied.
- **Activity Center**: Click `📋 Activity` to review sent applications and hired student requests in real-time.
- **Post a Task**: Customers can post new micro-gigs that appear live on the board with instant tag matching.
