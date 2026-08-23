# Electric Vehicle Energy Efficiency Analysis

## Overview

This project analyzes an Electric Vehicle (EV) dataset to answer a simple but often overlooked question: what does "best vehicle" actually mean, and does the answer change depending on who is asking.

Using a weighted **Business Score** built from three factors — Energy Efficiency, Recharge Time, and Motor Power 
— I designed three buyer personas (Balanced Buyer, Daily Commuter, and Performance Enthusiast) to see how vehicle rankings shift when priorities shift. The project combines SQL for analysis, Excel for the underlying calculations, and Power BI for the interactive dashboard.

## Business Score Methodology

Business Score is a persona-weighted composite of three normalized metrics:

| Persona | Efficiency | Recharge Speed | Motor Power |
|---|---|---|---|
| Balanced Buyer | 40% | 35% | 25% |
| Daily Commuter | 50% | 40% | 10% |
| Performance Enthusiast | 20% | 20% | 60% |

Each metric is min-max normalized (scaled 0–1) before weighting, since Efficiency, Recharge Time, and Motor Power are measured on very different scales. Recharge Time is inverted in the calculation, since a shorter recharge time is better.

## Business Questions Answered

The SQL script in this repo answers the following:

1. Count of each make listed per model year
2. Which manufacturers score highest on average Business Score
3. Which vehicle classes perform best by Business Score
4. Which specific models perform best by Business Score
5. Which make, model, and vehicle class combinations perform best by Business Score
6. Which makes have the most vehicles represented in the dataset
7. Which make/model combinations lead on raw Efficiency, Recharge, and Motor averages (unweighted, for reference)

## Key Findings

- **Lucid led in 2 of 3 buyer personas** — Balanced Buyer and Performance Enthusiast — showing its strength spans both efficiency and power, not just one trade-off.
- **smart EQ only led for Daily Commuters**, where efficiency and charging speed carry 90% of the combined weight — a clear, narrow strength rather than an all-round one.
- **Vehicle class rankings flip with priority.** Minicompact and Mid-size dominate under Balanced and Commuter weighting, but Full-size overtakes both once Motor Power is weighted at 60% for Performance Enthusiasts.
- **Tesla Model 3 stayed consistently strong** across every persona and multiple model years (2019–2021), pointing to durable, well-rounded performance over time.

**Takeaway for stakeholders:** Business Score should always be read alongside its persona weighting. A single "best vehicle" label is misleading without context — the right vehicle depends on what the buyer actually prioritizes.

## Tools Used

- **SQL** — aggregation and ranking queries to answer each business question
- **Excel** — Business Score calculation and normalization logic
- **Power BI** — interactive dashboard with persona toggle buttons, KPI cards, and drill-through detail table

## Files in This Repository

| File | Description |
|---|---|
| `EV_Business_Score_Analysis.sql` | SQL queries answering the business questions above |
| `EV_Analysis_Insight_Page.docx` | One-page written summary of key insights |
| Dashboard screenshots | Power BI dashboard views by persona |

## About

Built by Babatunde Fathia Oyindamola as part of a data analytics portfolio, applying an Electrical and Electronics Engineering background to structured, business-focused data analysis.

[LinkedIn](https://linkedin.com/in/fathia-babatunde-engine)
