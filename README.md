# InternIT
Welcome to the **InternIT Repository** — a centralized hub designed to support interns throughout their journey in the field of Big Data. This repository serves as a comprehensive resource center, combining both **theoretical foundations** and **hands-on practical exercises** to facilitate a well-rounded learning experience.

## Purpose
This repository is intended for students participating in a Big Data internship program. It provides structured guidance, curated learning materials, and practical assignments to help interns:
* Understand core concepts and technologies in Big Data.
* Gain hands-on experience with industry-standard tools and platforms.
* Work on real-world datasets and projects.
* Track their progress and document their learning journey.

## Scenario
You are a **Data Engineer** at **InternIT**, a fast-growing Romanian startup revolutionizing the **online banking** sector. InternIT provides a suite of digital banking services, including personal and business accounts, instant payments, virtual cards, and AI-powered financial insights. The company is committed to delivering secure, scalable, and user-friendly banking experiences to a growing customer base across Romania and Eastern Europe.

As part of the **Data Engineering team**, your role is critical in building and maintaining the data infrastructure that powers InternIT’s analytics, reporting, and real-time decision-making systems. You work closely with data analysts, software engineers, and compliance officers to ensure that data is:

* **Accurately collected** from various sources (e.g., transaction logs, user activity, third-party APIs, web scrapping).
* **Securely stored** in structured and scalable data warehouses.
* **Efficiently processed** using ETL/ELT pipelines.
* **Governed and compliant** with financial regulations such as GDPR and PSD2.

### Business Context
InternIT operates in a highly regulated and competitive environment. The company’s success depends on its ability to:
* Monitor and analyze customer behavior in real time.
* Detect fraudulent transactions using machine learning.
* Generate regulatory reports with high accuracy.
* Provide personalized financial recommendations.

### Internship Mission
During internship, intern will:
* Learn the fundamentals of **data warehousing, ETL/ELT, and data governance**.
* Work on simulated and real-world datasets to build **data pipelines**.
* Explore tools like **Git, GitHub, PostgreSQL, Python, VS Code,** and **pgAdmin 4**.
* Contribute to the design of a **mini data platform** that supports InternIT’s banking operations.

## Structure
Each chapter is self-contained and includes:
* **README.md**: A detailed explanation of the day's objectives, concepts covered, and instructions for practical tasks.
* **src/ folder**: Contains all code-related files, organized into subfolders based on specific topics or tools (e.g., schemas/, tables/, extract/, transform/, etc.).
```
InternIT
├───chapter_03_01
├───chapter_03_02
│   └───src
│       ├───schemas
│       └───tables
│           ├───raw
│           ├───staging
│           └───trusted
├───chapter_03_03
│   └───src
│       ├───extract
│       ├───load
│       └───transform
├───chapter_03_04
│   └───src
│       ├───business_view
│       ├───dashboard
│       └───roles
└───chapter_03_05
    └───src
```

## Chapters
**Chapter_03_01: [Data Warehousing](./chapter_03_01/)** - Introduction to data warehouses, their purpose, and how they support analytical processing.\
**Chapter_03_02: [Architecture of Data Warehousing and Normalization](./chapter_03_02/)** - Overview of warehouse architecture layers and data normalization principles.\
**Chapter_03_03: [Models of Data Processing – ETL/ELT](./chapter_03_03/)** -  Comparison of ETL and ELT workflows and their roles in data pipelines.\
**Chapter_03_04: [Database Administration](./chapter_03_04/)** - Fundamentals of managing, securing, and optimizing relational databases.\
**Chapter_03_05: [Data Governance](./chapter_03_05/)** - Principles of ensuring data quality, compliance, and responsible data management.

## Setup
Before diving into the chapters, interns should complete the following setup steps to ensure their development environment is ready:

### Install Git
Download and install [Git](https://git-scm.com/downloads).\
Verify installation in terminal:
```shell
git --version
```

### Create GitHub account
Sign up at [GitHub](https://github.com/).\
Set up your profile and enable 2FA for security.\
*Alternatives*:\
Sign up at [GitLab](https://gitlab.com/explore).\
Sign up at [BitBucket](https://www.atlassian.com/software/bitbucket).

### Create a GitHub Repository
Create a new repository for your internship work.\
Clone it locally:
```shell
git clone https://github.com/<your-username>/<your-repo-name>.git
```

### Install Python
Download and install [Python](https://www.python.org/downloads/).\
Verify installation:
```shell
python --version
```

### Install VS Code
Download and install [VS Code](https://code.visualstudio.com/).\
Recommended Extensions:
* Python
* Jupyter
* GitLens
* SQLTools
* Drawio

### Create a Virtual Environment
In VS Code terminal create a Virtual Environment.\
On *Windows*:
```shell
python -m venv venv
venv\Scripts\activate
```
On *MacOS*:
```shell
python -m venv venv
source venv/bin/activate
```

### Install Dependencies
Navigate to the root of the repository and run:
```shell
pip install -r requirements.txt
```

### Install PostgreSQL
Download and install [PostgreSQL](https://www.postgresql.org/download/).\
Set a password for the default **postgres** user during setup.

### Install pgAdmin 4
Download and install [pgAdmin 4](https://www.pgadmin.org/).\
Use it to manage your PostgreSQL databases via a GUI.

## For Interns
Interns are encouraged to:
* Follow the chapters sequentially.
* Read the *README.md* in each chapter before diving into the code.
* Complete and experiment with the code in the *src/* folder.
* Document their progress and reflections.
* Collaborate and contribute improvements via pull requests.