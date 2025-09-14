# 🚖 Uber Rides Analytics Dashboard  

This project demonstrates **end-to-end data analytics** using PostgreSQL, Power BI, and Scrum (Jira).  
It includes database modeling, SQL views, interactive dashboards, and Agile project tracking.  

## 🛠️ Tech Stack  

- **Database**: PostgreSQL (pgAdmin)  
- **Visualization**: Power BI  
- **Project Management**: Jira (Scrum demo board)  

---

## 📄 Dataset Description

The Uber rides dataset contains the following columns:

| Column Name                     | Data Type       | Description                                                                 |
|---------------------------------|----------------|-----------------------------------------------------------------------------|
| Date                            | `DATE`           | Date of the booking                                                         |
| Time                            | `TIME`           | Time of the booking                                                         |
| Booking ID                       | `VARCHAR/String` | Unique identifier for each booking                                          |
| Booking Status                   | `VARCHAR/String` | Status of the booking (e.g., Completed, Incomplete, No Driver Found)       |
| Customer ID                      | `VARCHAR/String` | Unique identifier for the customer                                          |
| Vehicle Type                     | `VARCHAR/String` | Type of vehicle assigned (e.g., eBike, Go Sedan, Auto)                     |
| Pickup Location                  | `VARCHAR/String` | Starting location of the ride                                              |
| Drop Location                    | `VARCHAR/String` | Destination location of the ride                                           |
| Avg VTAT                         | `NUMERIC/Float`  | Average Vehicle Time to Arrival (minutes)                                   |
| Avg CTAT                         | `NUMERIC/Float`  | Average Customer Time to Arrival (minutes)                                  |
| Cancelled Rides by Customer      | `INTEGER`        | Number of rides cancelled by the customer                                   |
| Reason for cancelling by Customer| `VARCHAR/String` | Reason given by customer for cancellation                                   |
| Cancelled Rides by Driver        | `INTEGER`        | Number of rides cancelled by the driver                                     |
| Driver Cancellation Reason       | `VARCHAR/String` | Reason given by driver for cancellation                                     |
| Incomplete Rides                 | `INTEGER`        | Number of rides marked as incomplete                                        |
| Incomplete Rides Reason          | `VARCHAR/String` | Reason for ride being incomplete                                           |
| Booking Value                    | `NUMERIC/Float`  | Fare value of the booking                                                  |
| Ride Distance                    | `NUMERIC/Float`  | Distance travelled during the ride (km)                                     |
| Driver Ratings                   | `NUMERIC/Float`  | Rating given to the driver (out of 5)                                       |
| Customer Rating                  | `NUMERIC/Float`  | Rating given to the customer (out of 5)                                     |
| Payment Method                   | `VARCHAR/String` | Payment method used (e.g., UPI, Debit Card)                                 |

---

## 📊 Features  

- **Data Modeling**  
  - PostgreSQL schema with tables for customers, drivers, rides, and cancellation reasons.  
  - SQL views for aggregated insights.  

- **Power BI Dashboard**  
  - Successful rides summary (total rides, revenue, trends).  
  - Unsuccessful rides summary (driver cancellations, customer cancellations, incomplete rides).  
  - Cancellation slicers to filter by reason with dynamic counts.  
  - Date filters to analyze performance by time.  

- **Agile/Scrum Demo**  
  - Created sample epics, stories, and tasks in Jira.  
  - Illustrated how analytics work can be tracked using Scrum methodology.  

---

## 📸 Screenshots  

- Interactive Dashboard Overview  
  <img width="1152" height="648" alt="successful booking summary" src="https://github.com/user-attachments/assets/a257c1f9-e55e-4df9-9240-7de165f157f2" />
  <img width="1149" height="645" alt="unsuccessful booking summary" src="https://github.com/user-attachments/assets/6b3076e0-a1d5-437f-ad27-c04e9548f9c5" />

- Scrum Demo Board
   <img width="1042" height="413" alt="sprint_table" src="https://github.com/user-attachments/assets/f00fe4e3-8bb2-41e8-a86a-f087ddc87972" />
   <img width="770" height="703" alt="backlog" src="https://github.com/user-attachments/assets/2e1fef07-d5ee-42de-8ec0-babcfe7d2021" />
   <img width="989" height="510" alt="board_view" src="https://github.com/user-attachments/assets/ae886bfe-f08d-4ff7-a685-f8d527c1bd12" />

---

## 📌 Key Learnings

- **SQL & Data Modeling**
  - Created normalized PostgreSQL tables for rides, customers, drivers, and cancellations.
  - Built analytical views to simplify reporting and analysis.

- **Data Analysis & Visualization**
  - Designed interactive Power BI dashboards with slicers and filters.
  - Calculated success/failure rates and aggregated metrics dynamically.

- **Agile Project Management**
  - Created Scrum demo boards in Jira with epics, stories, and tasks.
  - Demonstrated how analytics work can be tracked in an Agile workflow.

- **End-to-End Workflow**
  - Showcased the full process: raw data → database → analysis → visualization → project tracking.
 
Dataset source from Kaggle: https://www.kaggle.com/datasets/yashdevladdha/uber-ride-analytics-dashboard
