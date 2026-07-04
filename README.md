# CREDIT_RISK_ANALYSIS

# 🚀 Credit Risk Assessment Pipeline using Azure Data Factory, Azure Databricks & Microsoft Fabric

![Azure](https://img.shields.io/badge/Azure-Cloud-blue)
![Databricks](https://img.shields.io/badge/Databricks-Delta%20Lake-red)
![PySpark](https://img.shields.io/badge/PySpark-ETL-orange)
![ADF](https://img.shields.io/badge/Azure-DataFactory-blue)
![Fabric](https://img.shields.io/badge/Microsoft-Fabric-green)

---

# 📌 Project Overview

This project implements an **Enterprise End-to-End Credit Risk Assessment Pipeline** using Microsoft Azure services following the **ELT (Extract, Load, Transform)** approach and **Medallion Architecture (Bronze → Silver → Gold)**.

The solution ingests credit risk data from CSV files, converts them into Parquet format using Azure Data Factory, stores them in Azure Data Lake Storage Gen2, processes them using Azure Databricks and Delta Lake, builds analytical Star Schema tables, and visualizes business insights using Microsoft Fabric / Power BI.

The project also demonstrates production-ready features including:

- Azure Data Factory Pipelines
- Azure Data Lake Storage Gen2
- Azure Databricks
- Delta Lake
- Unity Catalog
- Watermarking
- Schema Evolution
- Audit Logging
- Error Handling
- SCD Type 2
- Time Travel
- Delta Optimization
- Databricks SQL Warehouse
- Microsoft Fabric Lakehouse
- Power BI Dashboard
- Streaming Pipeline using Azure Event Hub

---

# 🏦 Business Problem

Financial institutions receive thousands of loan applications every day.

Manual verification is slow and inconsistent.

The objective is to build a scalable platform that

- Automates data ingestion
- Cleans and validates data
- Calculates credit risk
- Generates analytical datasets
- Produces business dashboards
- Enables better loan approval decisions

---

# 🏗 Solution Architecture

```
Kaggle Credit Risk Dataset
          │
          ▼
Azure Data Factory (ELT)
          │
          ▼
Azure Data Lake Storage Gen2
          │
          ▼
Azure Databricks
          │
          ▼
Bronze Layer
          │
          ▼
Silver Layer
          │
          ▼
Gold Layer
          │
          ▼
Databricks SQL Warehouse
          │
          ▼
Microsoft Fabric / Power BI
```

---

# 📐 High Level Architecture

```
architecture/High_Level_Architecture.png
```

---

# 🏛 Medallion Architecture

```
architecture/Medallion_Architecture.png
```

---

# ⭐ Star Schema

```
architecture/Star_Schema.png
```

---

# 🔄 ETL Flow

```
architecture/ETL_Flow.png
```

---

# 🛠 Technology Stack

| Layer | Technology |
|---------|------------|
| Cloud | Microsoft Azure |
| Data Ingestion | Azure Data Factory |
| Storage | Azure Data Lake Storage Gen2 |
| Processing | Azure Databricks |
| Programming | PySpark |
| Storage Format | Delta Lake |
| Governance | Unity Catalog |
| SQL Engine | Databricks SQL Warehouse |
| Dashboard | Microsoft Fabric |
| Reporting | Power BI |
| Version Control | Git |
| CI/CD | Azure DevOps |
| Testing | PyTest |

---

# 📂 Source Dataset

The project uses five source datasets.

```
applicant_profiles.csv

credit_applications.csv

credit_history.csv

loan_details.csv

economic_indicators.csv
```

---

# 📁 ADLS Folder Structure

```
ADLS

SRC_Files/

TGT_Files/

Bronze/

Silver/

Gold/

Archive/

Logs/
```

---

# 🔷 Batch Processing Flow

```
CSV Files

↓

ADF Copy Activity

↓

Convert CSV → Parquet

↓

ADLS TGT_Files

↓

Azure Databricks

↓

Bronze

↓

Silver

↓

Gold

↓

Databricks SQL Warehouse

↓

Microsoft Fabric Dashboard
```

---

# ⚡ Streaming Pipeline

```
CSV Files

↓

Python Application

↓

Azure Event Hub

↓

Databricks Structured Streaming

↓

Bronze

↓

Silver

↓

Gold
```

---

# 🥉 Bronze Layer

### Catalog

```
Bronze_Catalog
```

### Schema

```
Bronze_SCH
```

### Tables

```
Bronze_Applicant_Profiles

Bronze_Credit_Applications

Bronze_Credit_History

Bronze_Loan_Details

Bronze_Economic_Indicators

Bronze_Audit_Log

Bronze_Error_Log
```

### Features

- Raw Data
- Watermarking
- Schema Evolution
- Audit Logging
- Error Handling
- Delta Tables

---

# 🥈 Silver Layer

### Catalog

```
Silver_Catalog
```

### Schema

```
Silver_SCH
```

### Tables

```
Silver_Applicant

Silver_Credit

Silver_Loan

Silver_Economic

Silver_Data_Quality
```

### Transformations

- Remove Duplicates
- Data Validation
- Null Handling
- Standardization
- Type Casting
- Business Rules
- Surrogate Keys
- SCD Type 2
- Merge
- Delta Optimization
- Time Travel

---

# 🥇 Gold Layer

### Catalog

```
Gold_Catalog
```

### Schema

```
Gold_SCH
```

## Dimension Tables

```
DIM_APPLICANT

DIM_DATE

DIM_REGION

DIM_LOAN_TYPE

DIM_CREDIT_SCORE_BAND

DIM_ECONOMIC_INDICATOR
```

## Fact Table

```
FACT_CREDIT_RISK
```

## Aggregate Tables

```
GOLD_DAILY_SUMMARY

GOLD_MONTHLY_SUMMARY

GOLD_YEARLY_SUMMARY
```

## KPI Tables

```
GOLD_EXECUTIVE_DASHBOARD

GOLD_CUSTOMER_KPI

GOLD_RISK_KPI

GOLD_REGION_KPI
```

---

# 📊 Business KPIs

- Total Loan Applications
- Approved Loans
- Rejected Loans
- Average Credit Score
- Average Loan Amount
- Risk Category Distribution
- Region-wise Loan Distribution
- High Risk Customers
- Debt-To-Income Ratio
- Loan-To-Value Ratio
- Default Prediction
- Loan Approval Rate

---

# ⭐ Star Schema

### Fact Table

```
FACT_CREDIT_RISK
```

### Dimension Tables

```
DIM_APPLICANT

DIM_DATE

DIM_REGION

DIM_LOAN_TYPE

DIM_CREDIT_SCORE_BAND

DIM_ECONOMIC_INDICATOR
```

---

# 📈 Data Quality

The project performs

- Duplicate Validation
- Null Validation
- Schema Validation
- Range Validation
- Data Type Validation
- Business Rule Validation
- Referential Integrity Checks

---

# ⚙ Delta Lake Features

- ACID Transactions
- Time Travel
- Schema Evolution
- Merge
- Vacuum
- Optimize
- ZORDER
- Delta History

---

# 📊 Dashboard

Dashboard is developed using

- Microsoft Fabric
- Power BI
- Databricks SQL Warehouse

Major Reports

- Credit Risk Dashboard
- Executive Dashboard
- Regional Dashboard
- Customer Dashboard
- Loan Analysis
- Risk Trend Analysis

---

# 🔒 Security & Governance

- Unity Catalog
- RBAC
- Azure Key Vault
- Managed Identity
- Secrets Management
- Audit Logging
- Data Lineage

---

# 🧪 Testing

- Unit Testing
- Integration Testing
- Data Validation
- Schema Validation
- Row Count Validation
- Business Rule Validation

---

# 📂 Repository Structure

```
Credit-Risk-Assessment-Pipeline
│
├── architecture
├── datasets
├── adf
├── databricks
├── sql
├── data_model
├── dashboards
├── streaming
├── tests
├── docs
├── screenshots
└── README.md
```

---

# 🚀 Future Enhancements

- Real-Time Fraud Detection
- Machine Learning Credit Scoring
- Azure Synapse Integration
- CI/CD using Azure DevOps
- Data Observability
- Great Expectations
- Auto Scaling Pipelines

---

# 👨‍💻 Author

**Srujith Kandala**

Azure Data Engineer Project

---

# ⭐ If you found this project useful, please give it a Star.
