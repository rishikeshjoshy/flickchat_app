FlickChat ⚡
<p align="center">
<img src="https://raw.githubusercontent.com/your-username/flickchat-app/main/assets/logo-for-readme.png" alt="FlickChat Logo" width="150"/>
</p>

<h3 align="center">A next-generation messaging app built to add real emotional context to digital conversations.</h3>

<p align="center">
<img alt="Flutter" src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white"/>
<img alt="Supabase" src="https://img.shields.io/badge/Supabase-3ECF8E?style=for-the-badge&logo=supabase&logoColor=white"/>
<img alt="PostgreSQL" src="https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white"/>
</p>

🚀 Introduction
FlickChat is more than just a messaging app. It's an experiment in building more empathetic and intuitive digital communication. In a world of text, we lose the crucial non-verbal cues that define human connection. FlickChat aims to bring them back through innovative features, creating a richer, more conscious messaging experience.

This repository chronicles the entire development journey, from initial design to a production-grade application.

✨ Key Features
FlickChat combines a polished, standard messaging experience with groundbreaking features that don't exist in other apps.

Feature

Description

Status

Real-Time Chat

Secure, fast, and reliable one-on-one messaging powered by Supabase Realtime.

🏗️ In Dev

Secure Authentication

Robust user authentication and profile management.

✅ Complete

Animated Onboarding

A visually stunning and modern first impression using custom animations.

🏗️ In Dev

Live Emotion Indicator

(Super Feature) An on-device AI model analyzes a user's facial expression, sharing their emotional state (e.g., happy, sad) as a subtle status indicator in real-time.

🎨 Designed

"Echo" - Shared Memories

(Future Feature) Leave digital "memories" (photo + voice note) at physical locations for friends to discover when they visit the same spot in the future.

ấp Inception

🎨 UI Design
The application is designed with a clean, modern, dark-mode aesthetic to be intuitive and visually pleasing. The full UI/UX has been designed in Figma.

<p align="center">
<img src="https://raw.githubusercontent.com/your-username/flickchat-app/main/assets/design-showcase.png" alt="FlickChat UI Design Showcase" width="800"/>
</p>

🛠️ Tech Stack
This project leverages a modern, scalable, and efficient tech stack.

Frontend (Client-Side)
Technology

Icon

Description

Flutter

<img src="https://img.shields.io/badge/-Flutter-02569B?style=flat-square&logo=flutter&logoColor=white" />

For building a beautiful, natively compiled application for mobile from a single codebase.

Dart

<img src="https://img.shields.io/badge/-Dart-0175C2?style=flat-square&logo=dart&logoColor=white" />

The programming language for Flutter.

Backend (Server-Side)
Technology

Icon

Description

Supabase

<img src="https://img.shields.io/badge/-Supabase-3ECF8E?style=flat-square&logo=supabase&logoColor=white" />

The open-source Firebase alternative for handling our database, authentication, and real-time subscriptions.

PostgreSQL

<img src="https://img.shields.io/badge/-PostgreSQL-4169E1?style=flat-square&logo=postgresql&logoColor=white" />

The world's most advanced open-source relational database, powering our backend.

📊 Project Status
Current Phase: Development

The backend architecture and security policies are complete. The full UI has been designed. We are now actively translating the designs into functional Flutter code.

⚙️ Setup and Installation
To get the project running locally, follow these steps:

Clone the repository:

git clone https://github.com/your-username/flickchat-app.git
cd flickchat-app

Set up Supabase:

Create a new project on Supabase.

In the SQL Editor, run the table creation scripts found in the /supabase directory of this project.

Enable Row Level Security (RLS) for all tables and apply the policies from the scripts.

Configure Environment Variables:

Create a .env file in the root of the project.

Add your Supabase URL and Anon Key to the .env file:

SUPABASE_URL=YOUR_SUPABASE_URL
SUPABASE_ANON_KEY=YOUR_SUPABASE_ANON_KEY

Install Flutter Dependencies:

flutter pub get

Run the App:

flutter run

🗺️ Project Roadmap
[x] Phase 1: Backend & Security Architecture

[x] Phase 2: UI/UX Design

[ ] Phase 3: Core App Development (Current)

[ ] Translate Figma designs to Flutter code.

[ ] Implement real-time messaging.

[ ] User profile management.

[ ] Phase 4: AI Feature Integration

[ ] Implement on-device facial expression detection.

[ ] Phase 5: Beta Testing & Deployment

👤 Author
Rishikesh Kanikudiyil Joshy

LinkedIn: www.linkedin.com/in/rishikesh-kanikudiyil-ftw

GitHub: rishikeshjoshy

This project is being built in public. Follow the journey for updates!
