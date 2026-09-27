# IPv6Pulse — Enterprise-Grade IPv6 & Dependency Readiness Infrastructure Auditor

**IPv6Pulse** is a high-performance infrastructure scanner and compliance auditor built for enterprise infrastructure teams, cloud architects, and security engineers. It audits any domain and its deep DOM dependency tree for IPv4/IPv6 dual-stack readiness, DNSSEC cryptographic validation, and carrier translation failure risks.

---

## 🌐 Live Production Deployment
- **Live App**: [https://ipv6pulse.vercel.app](https://ipv6pulse.vercel.app)
- **API Swagger Docs**: [https://ipv6pulse.vercel.app/docs](https://ipv6pulse.vercel.app/docs)
- **API Health**: [https://ipv6pulse.vercel.app/health](https://ipv6pulse.vercel.app/health)

---

## 🚀 Key Features

- **⚡ Sub-5-Second Concurrency**: Asynchronous DOM crawler (`aiohttp` + `BeautifulSoup4`) and concurrent multi-protocol DNS resolution (`dnspython` querying `A`, `AAAA`, `DNSKEY`, `RRSIG`).
- **🛡️ AI & Heuristic Dependency Classifier**: Automatically tags third-party assets (Payment Gateways, Authentication endpoints, CDNs, Analytics, APIs) and calculates risk-weighted failure metrics.
- **🌐 Interactive Glowing Network Topology**: HTML5 Canvas force-directed graph showing live packet traffic, central root node, and color-coded edge dependencies (Green for Dual-Stack, Red for IPv4-only carrier bottleneck, Amber for critical path).
- **📊 IPv6 Readiness Index (0–100%)**: Composite resilience score factoring root server dual-stack status, weighted critical dependency coverage, and DNSSEC signatures.
- **📄 Downloadable Executive PDF Reports**: Multi-page report generated in real-time via `reportlab`, complete with scorecards, vulnerability listings, and actionable remediation roadmaps.
- **💾 Historical Regression Auditing**: Persistent SQLite / PostgreSQL storage with JSONB payload schemas to monitor infrastructure degradation over time.
- **🔐 Google OAuth & 1-Click Judge Access**: Production-ready Google OAuth with an instant 1-click test mode for hackathon judging.
- **📜 Legal & Enterprise Compliance**: Fully compliant Privacy Policy and Terms of Service interfaces.

---

## 🛠️ Architecture

```
[Target Domain] ──> [Asynchronous DOM Crawler (aiohttp/bs4)]
                          │
                          ▼ (Extract Scripts, Styles, Images, IFrames)
                   [Multi-Protocol DNS Auditor (dnspython)]
                          │ (Concurrent A, AAAA, DNSKEY, RRSIG Queries)
                          ▼
            [AI / Heuristic Dependency Classifier]
                          │ (Assign Risk Tiers: Critical, High, Med, Low)
                          ▼
             [Readiness Scoring & Graph Engine]
             ┌────────────┴─────────────┐
             ▼                          ▼
     [FastAPI JSON API]     [ReportLab PDF Engine]
             │                          │
             ▼                          ▼
   [Cyber Glassmorphism UI]      [Executive PDF]
```

---

## 🏃 Quickstart

### Option 1: One-Click Local Development (Windows)
Run the launcher script:
```powershell
.\run.ps1
```
Or start manually:
```bash
# Terminal 1 - Backend
cd backend
python -m venv venv
.\venv\Scripts\activate
pip install -r requirements.txt
uvicorn app.main:app --reload --port 8000

# Terminal 2 - Frontend
cd frontend
npm install
npm run dev
```

- **Frontend Dashboard**: [http://localhost:5173](http://localhost:5173)
- **Backend Swagger API**: [http://localhost:8000/docs](http://localhost:8000/docs)

### Option 2: Docker Compose Orchestration
```bash
docker-compose up --build
```

---

## 🧪 Testing

Execute the automated test suite verifying crawler normalization, classification heuristics, scoring algorithms, ReportLab PDF byte streams, and FastAPI endpoints:
```bash
cd backend
.\venv\Scripts\pytest -v tests/test_engine.py
```

---

## 📜 Standards & RFC Compliance
- **RFC 8200**: Internet Protocol, Version 6 (IPv6) Specification
- **RFC 4033**: DNS Security Introduction and Requirements (DNSSEC)
- **RFC 6146**: Stateful NAT64: Network Address and Protocol Translation
