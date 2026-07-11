# AI Interview Trainer Agent

An end-to-end AI-powered Interview Preparation Platform built using IBM watsonx Orchestrate, watsonx.ai, and IBM BOB.

## Features

* Personalized interview questions
* Technical, HR, and Behavioral interview preparation
* Resume-based guidance
* Model answers and preparation tips
* RAG-powered knowledge retrieval
* Interactive web interface using IBM BOB
* Backend APIs for interview generation and session management
* Embedded watsonx Orchestrate agent integration

## Architecture

User → IBM BOB Frontend → Backend APIs → watsonx Orchestrate Agent → RAG Knowledge Base → Foundation Model → Personalized Interview Guidance

## Tech Stack

* IBM watsonx Orchestrate
* IBM watsonx.ai
* IBM BOB
* IBM Cloud
* RAG (Retrieval Augmented Generation)
* Node.js / Express
* React (Frontend)
* GitHub

## Project Structure

```text
frontend/      → IBM BOB UI application
backend/       → APIs and business logic
orchestrate/   → Agent configuration and integration files
```

## Setup

### Clone Repository

```bash
git clone <repository-url>
cd AI-Interview-Agent
```

### Frontend

```bash
cd frontend
npm install
npm start
```

### Backend

```bash
cd backend
npm install
npm start
```

## IBM watsonx Orchestrate Integration

The AI Interview Agent is connected to IBM BOB using the embed code provided by IBM watsonx Orchestrate.

## Architecture

Frontend (IBM BOB)
        ↓
Backend (Node.js/Express)
        ↓
IBM watsonx Orchestrate Agent
        ↓
watsonx.ai Foundation Models
        ↓
Personalized Interview Guidance


## Technologies Used

- React.js
- Node.js
- Express.js
- IBM BOB
- IBM watsonx Orchestrate
- IBM watsonx.ai
- IBM Cloud
- JWT Authentication
- PDFKit


## Future Enhancements

* Voice interview simulator
* Company-specific interview preparation
* Real-time feedback and scoring
* Interview performance analytics

## Developer

Dev Srivastava

 
