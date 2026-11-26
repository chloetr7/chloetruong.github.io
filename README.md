# Chloe Truong | Data Engineering & Analytics

[View the live portfolio](https://chloetr7.github.io/chloetruong.github.io/) · [LinkedIn](https://www.linkedin.com/in/nguyen-thao-nhi-truong-041b46253/) · [Email](mailto:chloe.trng2@gmail.com)

I’m based in Sydney and currently completing a Master of Data Science and Innovation at the University of Technology Sydney. At MoMo, I built Airflow pipelines to monitor payment issues, migrated BigQuery reporting logic to a shared metrics layer, and automated monthly merchant reporting.

This repository contains six reproducible SQL analyses. Each project starts with a business question and includes the input data, SQL query, and calculated results. The portfolio presents the findings, and the project folders contain everything needed to reproduce them.

## Projects

| Project | Question |
| --- | --- |
| [Receivables aging](projects/receivables/) | How much did the share of balances overdue by at least 90 days change between two snapshots? |
| [Retail revenue forecasting](projects/retail-forecast/) | How accurately can the same month’s sales from the previous year predict monthly revenue? |
| [Payment screening](projects/payment-screening/) | How much does fraud recall improve when a risk score is added to screening rules at a fixed review capacity? |
| [Nike sales channels](projects/nike-channels/) | How did direct and wholesale sales growth compare with Nike’s overall revenue growth in FY2025? |
| [Student outcomes](projects/student-outcomes/) | Which of four reported student characteristics shows the largest exam-score gap between its top and bottom groups? |
| [Film revenue by genre](projects/film-revenue/) | How do median inflation-adjusted box-office revenues compare across animation, adventure, and comedy? |

## Data and methods

The analyses use published summary data. Each project folder documents the source, units, and limits of interpretation in its `README.md`. To trace a result, start with `data.csv`, inspect the calculation in `analysis.sql`, and compare the output with `results.csv`.

## Reproduce the results

From the repository root, run:

```bash
python3 reproduce.py
```

The script uses Python’s standard library to load each input CSV into SQLite, execute the project’s SQL query, and regenerate its `results.csv`.

## Preview the website locally

From the repository root, run:

```bash
python3 -m http.server 8765
```

Open [localhost:8765](http://localhost:8765) to browse the portfolio.
