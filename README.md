# 🧪 Home Test API - Karate BDD Framework

This project is a take-home API testing assignment using the **Karate BDD testing framework** for Java and Maven. It automates test scenarios for an inventory-based API served via Docker.

---

## 📁 Project Structure

```
home_test_api/
├── reports/
├── src/
│   └── test/
│       └── java/
│           └── inventoryapi/
│               ├── features/
│               │   ├── addInventory.feature
│               │   ├── addInventoryError.feature
│               │   ├── addMissingInventory.feature
│               │   ├── filterInventory.feature
│               │   ├── getInventory.feature
│               │   └── verifyProduct.feature
│               ├── testData/
│               │   ├── addInventory.json
│               │   ├── addInventoryError.json
│               │   ├── missingInventoryError.json
│               │   ├── filterInventory.json
│               │   ├── addMissingInventory.json
│               │   └── getInventory.json
│               └── InventoryTest.java
├── karate-config.js
├── pom.xml
└── README.md
```

---

## ⚙️ Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/home-test-api.git
cd home-test-api
```

### 2. Start the API Using Docker

```bash
docker pull automaticbytes/demo-app
docker run -p 3100:3100 automaticbytes/demo-app
```

- The API will now be accessible at:  
  **`http://localhost:3100/api`**

---

## ▶️ How to Run Tests

### 🧰 Prerequisites

- Java 8 or higher
- Maven installed (`mvn -v`)
- Git + GitHub
- IDE (e.g., IntelliJ IDEA)
- Internet (for Maven dependencies)

### ✅ Run Tests by Tag

Run all inventory tests (all 6 features):

```bash
mvn test -Dkarate.options="@inventory"
```

Run only a specific scenario using its tag (e.g., `@getAll`):

```bash
mvn test -Dkarate.options="@getAll"
```
### ✅ Run Tests by Feature File

```bash
mvn test -Dkarate.options="classpath:inventoryapi/features/addInventory.feature"
```

---

## 📦 Reports

Sample reports are stored inside the `reports/` directory.


## 📑 Test Scenarios Covered

Each `.feature` file in `inventoryapi/features` covers a specific functionality of the Inventory API:

| Feature File              | Purpose                                               |
|---------------------------|--------------------------------------------------------|
| `addInventory.feature`    | Adds a valid product to the inventory                 |
| `addInventoryError.feature` | Tries to add a product with duplicate ID              |
| `addMissingInventory.feature` | Adds a product with missing required fields         |
| `filterInventory.feature` | Filters product by ID                                 |
| `getInventory.feature`    | Fetches all available inventory items                 |
| `verifyProduct.feature`   | Validates that the newly added product is retrievable |

---

## 🧾 Test Data

Test data files are available under `inventoryapi/testData/`:

| File                         | Description                             |
|------------------------------|------------------------------------------|
| `addInventory.json`          | Template for valid product payload       |
| `addInventoryError.json`     | Duplicate product input for error test   |
| `missingInventoryError.json` | Expected error messages                  |
| `filterInventory.json`       | Data for filtering product by ID         |
| `addMissingInventory.json`   | Incomplete payloads for negative tests   |
| `getInventory.json`          | Reference payloads to match against API  |

---

## ⚙️ Configuration

- `karate-config.js` sets the base URL and dynamic config options.
- You can extend this file to support multiple environments like `dev`, `qa`, etc.

---

## 🛠️ Tools Used

- [Karate DSL](https://github.com/karatelabs/karate) – API test automation
- [JUnit 5](https://junit.org/) – Test runner
- [Apache Maven](https://maven.apache.org/) – Build tool
- [Docker](https://www.docker.com/) – For running the API locally
- Git + GitHub – Version control and sharing

---

## 📌 Notes

- The test data uses random IDs to ensure repeatable execution without conflicts.
- Each feature contains two tags:
    - `@inventory` – shared across all features for batch execution.
    - A scenario-specific tag (e.g., `@getAll`, `@addItem`) for fine-grained test runs.

---
