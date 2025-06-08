# Home Test API - Karate BDD Framework

This project is a take-home API testing assignment using the [Karate](https://github.com/karatelabs/karate) BDD testing framework for Java and Maven. It automates tests for an inventory-based API running via Docker.

##  Project Structure

```
home_test_api/ ├── src/ 
               │ └── test/ 
               │ └── java/ 
               │ └── inventoryapi/ 
               │ ├── features/ 
               │ │ ├── addInventory.feature 
               │ │ ├── addInventoryError.feature 
               │ │ ├── addMissingInventory.feature 
               │ │ ├── filterInventory.feature 
               │ │ ├── getInventory.feature 
               │ │ └── verifyProduct.feature 
               │ ├── testData/ 
               │ │ ├── addProduct.json 
               │ │ ├── duplicateProduct.json 
               │ │ ├── errorMessages.json 
               │ │ ├── filter.json 
               │ │ ├── missingField.json 
               │ │ └── responseData.json 
               │ └── InventoryTest.java 
               ├── karate-config.js 
               ├── pom.xml 
               └── README.md
                ```

---

##  Setup Instructions

### 1. Clone This Repo

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

## 🚀 How to Run Tests

### 🧰 Prerequisites

- Java 8 or higher
- Maven installed (`mvn -v`)
- IntelliJ IDEA or any Java IDE
- Internet connection (for Maven dependencies)

### ▶️ Run all tests

```bash
mvn clean test

▶️ Run a specific feature

mvn test -Dkarate.options="classpath:inventoryapi/features/addInventory.feature"


---


##  Test Scenarios Covered

Features
Each .feature file inside inventoryapi/features covers different aspects of the Inventory API:
addInventory.feature: Tests valid product addition
addInventoryError.feature: Handles error responses for invalid inputs
addMissingInventory.feature: Tests behavior when fields are missing
filterInventory.feature: Validates product filtering based on criteria
getInventory.feature: Checks product retrieval API
verifyProduct.feature: Asserts correct product details


---
Test Data
The testData folder contains JSON files used in test scenarios:
addProduct.json – valid product template
duplicateProduct.json – duplicate input for negative test
errorMessages.json – expected error strings
filter.json – filter criteria
missingField.json – payloads missing fields
responseData.json – expected response payloads


---
Configuration
karate-config.js is the environment config file where base URLs and environment-specific variables are set.
You can extend this file to support multiple environments (e.g., dev, QA, staging).
---

## 🛠️ Tools Used

- [Karate](https://github.com/karatelabs/karate)
- [JUnit 5](https://junit.org/)
- [Apache Maven](https://maven.apache.org/)
- [Docker](https://www.docker.com/)
- Git + GitHub

---

##  Notes

- Data is randomized to avoid failures on re-runs due to ID duplication.

---
