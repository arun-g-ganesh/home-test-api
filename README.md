# Home Test API - Karate BDD Framework

This project is a take-home API testing assignment using the [Karate](https://github.com/karatelabs/karate) BDD testing framework for Java and Maven. It automates tests for an inventory-based API running via Docker.

##  Project Structure

```
src
└── test
    └── java
        └── inventory
            ├── common
            │   └── utilities.feature     # Contains reusable JS functions (e.g., dynamic product generator)
            ├── inventoryapi.feature      # Main feature file testing API endpoints
            └── inventoryTest.java        # JUnit test runner
```

---

##  Setup Instructions

### 1. Clone or Initialize This Repo

If you haven't already created a GitHub repository:

```bash
# Initialize local repo and push to GitHub
git init
git add .
git commit -m "Initial commit - Karate API test assignment"
git branch -M main
git remote add origin https://github.com/your-username/home-test-api.git
git push -u origin main
```

If already cloned:

```bash
git clone https://github.com/your-username/home-test-api.git
cd home-test-api
```

### 2. Start the API with Docker

```bash
docker pull automaticbytes/demo-app
docker run -p 3100:3100 automaticbytes/demo-app
```

API will be accessible at:  
`http://localhost:3100/api`

---

##  Run the Tests

Ensure you have Maven installed. Then, from the project root:

```bash
mvn test
```

---

##  Test Scenarios Covered

###  `inventoryapi.feature`

| Scenario | Endpoint | Description |
|----------|----------|-------------|
| Get all menu items | `GET /api/inventory` | Checks minimum item count and required keys |
| Filter by ID | `GET /api/inventory/filter?id=3` | Verifies correct item details for known ID |
| Add new item (dynamic) | `POST /api/inventory/add` | Adds a randomly generated product |
| Add existing item | `POST /api/inventory/add` | Attempts re-add of same ID (expects failure) |
| Missing info | `POST /api/inventory/add` | Posts incomplete JSON (expects 400 + error msg) |
| Validate added item | `GET /api/inventory` | Confirms the dynamically added item is present |

---

## 🛠️ Tools Used

- [Karate](https://github.com/karatelabs/karate)
- [JUnit 5](https://junit.org/)
- [Apache Maven](https://maven.apache.org/)
- [Docker](https://www.docker.com/)
- Git + GitHub

---

##  Notes

- `utilities.feature` contains a JS function to generate dynamic products.
- Data is randomized to avoid failures on re-runs due to ID duplication.

---
