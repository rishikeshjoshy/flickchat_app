⚡ FlickChat
<p align="center"><img src="https://raw.githubusercontent.com/your-username/flickchat-app/main/assets/logo-for-readme.png" alt="FlickChat Logo" width="150"/></p>
<h3 align="center">Redefining digital conversations with real emotional context</h3>
<p align="center"><img alt="Flutter" src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white"/><img alt="Supabase" src="https://img.shields.io/badge/Supabase-3ECF8E?style=for-the-badge&logo=supabase&logoColor=white"/><img alt="PostgreSQL" src="https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white"/></p>

🚀 Introduction
FlickChat isn’t just another messaging app — it’s an emotional bridge. In today's text-heavy world, we often lose the nuance of face-to-face interaction. FlickChat is built to restore human depth through rich context-aware features and intuitive UI/UX design.
This repository documents every step of the development journey, from early prototypes to production-ready deployment.

✨ Features Snapshot
| Feature | Description | Status | 
| 🗨️ Real-Time Chat | Secure and low-latency one-on-one messaging powered by Supabase Realtime. | 🔧 In Dev | 
| 🔐 Secure Authentication | Robust user login, registration, and session management. | ✅ Completed | 
| 🎞️ Animated Onboarding | High-impact first impression with custom motion design. | 🔧 In Dev | 
| 💡 Live Emotion Indicator | (Super Feature) Detects facial expressions in real-time to reflect user emotion via status updates. | 🎨 Designed | 
| 🧠 "Echo" Shared Memories | (Future Feature) Leave digital memories tied to geographic locations for friends to discover later. | 🌱 Ideation | 



🎨 UI & Design
Modern, dark-mode interface built to feel natural and immersive. Designed fully in Figma for flexibility and precision.
<p align="center"><img src="https://raw.githubusercontent.com/rishikeshjoshy/flickchat-app/main/assets/design-showcase.png" alt="FlickChat UI Design Showcase" width="800"/></p>

🛠️ Tech Stack
Client-Side
| Technology | Icon | Purpose | 
| Flutter | <img src="https://img.shields.io/badge/-Flutter-02569B?style=flat-square&logo=flutter&logoColor=white" /> | Multi-platform native UI from one codebase | 
| Dart | <img src="https://img.shields.io/badge/-Dart-0175C2?style=flat-square&logo=dart&logoColor=white" /> | Primary language for Flutter apps | 


Server-Side
| Technology | Icon | Purpose | 
| Supabase | <img src="https://img.shields.io/badge/-Supabase-3ECF8E?style=flat-square&logo=supabase&logoColor=white" /> | Open-source Firebase alternative with powerful tools | 
| PostgreSQL | <img src="https://img.shields.io/badge/-PostgreSQL-4169E1?style=flat-square&logo=postgresql&logoColor=white" /> | Reliable relational database backend | 



📦 Setup Instructions
# Clone the repository
git clone https://github.com/your-username/flickchat-app.git
cd flickchat-app

# Install Flutter dependencies
flutter pub get


Supabase Configuration
- Create a Supabase project.
- Run SQL setup scripts from /supabase directory.
- Enable Row-Level Security on all tables and apply necessary policies.
Environment Setup
Create a .env file in the project root with the following keys:
SUPABASE_URL=YOUR_SUPABASE_URL
SUPABASE_ANON_KEY=YOUR_SUPABASE_ANON_KEY


Run the App
flutter run



📊 Development Status
🟡 Current Phase: App Feature Development
- ✅ Backend architecture implemented
- ✅ UI/UX complete
- 🚧 Translating Figma to Flutter
- 🚧 Messaging logic integration
- 🚧 User profile system

🗺️ Roadmap
- [x] Phase 1: Backend & Security Setup
- [x] Phase 2: UI/UX Design
- [ ] Phase 3: Functional Implementation
- [ ] Phase 4: AI Feature Integration
- [ ] Phase 5: Beta Testing & Deployment
