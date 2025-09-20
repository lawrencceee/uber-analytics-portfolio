# 🚖 Uber Rides Analytics Dashboard  

This project demonstrates a complete, end-to-end data analytics pipeline. It transforms raw Uber ride data into actionable business insights by leveraging a normalized PostgreSQL database, advanced SQL views, and an interactive Power BI dashboard. The project workflow is managed using Agile/Scrum principles in Jira.

## 🛠️ Tech Stack  

- **Database**: PostgreSQL (pgAdmin)  
- **Visualization**: Power BI  
- **Project Management**: Jira (Scrum demo board)


## 🔬 Project Architecture & Data Flow

The project follows a structured data pipeline to ensure scalability and maintainability:

**Raw Data (CSV)** → **PostgreSQL Database** → **SQL Analytical View** → **Power BI Dashboard**

This architecture separates raw data storage from the analytical layer, allowing for efficient querying and simplified dashboard development in Power BI.


## 📄 Database Schema Design

To optimize for data integrity and reduce redundancy, the original flat dataset was normalized into a relational schema with two primary tables. This design improves scalability and simplifies data management.

`rides` Table
- Stores the core transactional details for each ride. `booking_id` is the Primary Key.

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
| Booking Value                    | `NUMERIC/Float`  | Fare value of the booking                                                  |
| Ride Distance                    | `NUMERIC/Float`  | Distance travelled during the ride (km)                                     |
| Driver Ratings                   | `NUMERIC/Float`  | Rating given to the driver (out of 5)                                       |
| Customer Rating                  | `NUMERIC/Float`  | Rating given to the customer (out of 5)                                     |
| Payment Method                   | `VARCHAR/String` | Payment method used (e.g., UPI, Debit Card)                                 |

`cancellations` Table
- Stores details related to unsuccessful rides, linked to the `rides` table via a foreign key. `booking_id` is the Foreign Key referencing `rides.booking_id`.

| Column Name                     | Data Type       | Description                                                                 |
|---------------------------------|----------------|-----------------------------------------------------------------------------|
| Booking ID                       | `VARCHAR/String` | Unique identifier for each booking                                          |
| Booking Status                   | `VARCHAR/String` | Status of the booking (e.g., Completed, Incomplete, No Driver Found)       |
| Cancelled Rides by Customer      | `INTEGER`        | Number of rides cancelled by the customer                                   |
| Reason for cancelling by Customer| `VARCHAR/String` | Reason given by customer for cancellation                                   |
| Cancelled Rides by Driver        | `INTEGER`        | Number of rides cancelled by the driver                                     |
| Driver Cancellation Reason       | `VARCHAR/String` | Reason given by driver for cancellation                                     |
| Incomplete Rides                 | `INTEGER`        | Number of rides marked as incomplete                                        |
| Incomplete Rides Reason          | `VARCHAR/String` | Reason for ride being incomplete                                           |


## 📊 Dashboard Features & Insights

- **Successful Rides Analysis**  
  - KPIs for Total Revenue, Total Rides, and Average Ride Distance.
  - Trend analysis of revenue and ride volume over time.
  - Breakdowns by vehicle type, payment method, and pickup/drop locations.

- **Unsuccessful Rides Analysis:**  
  - KPIs for Driver Cancellation Rate and Customer Cancellation Rate.
  - Root cause analysis using interactive slicers to filter rides by specific cancellation reasons.
  - Identification of trends and patterns in ride failures.

- **Agile/Scrum Demo**  
  - A sample Jira board illustrates how analytics projects can be structured into epics, user stories, and tasks, enabling clear tracking and iterative development.



## 📸 Screenshots  

- Interactive Dashboard Overview  
  <img width="1152" height="648" alt="successful booking summary" src="https://github.com/user-attachments/assets/a257c1f9-e55e-4df9-9240-7de165f157f2" />
  <img width="1151" height="644" alt="unsuccessful booking summary" src="https://github.com/user-attachments/assets/7c51ef23-2777-4e97-9727-faf4dccbadf1" />



- Scrum Demo Board
   <img width="1042" height="413" alt="sprint_table" src="https://github.com/user-attachments/assets/f00fe4e3-8bb2-41e8-a86a-f087ddc87972" />
   <img width="770" height="703" alt="backlog" src="https://github.com/user-attachments/assets/2e1fef07-d5ee-42de-8ec0-babcfe7d2021" />
   <img width="989" height="510" alt="board_view" src="https://github.com/user-attachments/assets/ae886bfe-f08d-4ff7-a685-f8d527c1bd12" />



## 📌 Key Learnings

- **Data Modeling**
  - Designed a normalized relational schema in PostgreSQL to ensure data integrity and minimize redundancy, moving from a single flat file to a structured database.

- **Advanced SQL**
  - Developed a complex analytical SQL view using `JOIN` and `CASE` statements to pre-process data, centralize business logic, and optimize queries for reporting.

- **BI & Data Visualization**
  - Built a dynamic and interactive Power BI dashboard to monitor key business KPIs, enabling root cause analysis of ride cancellations through intuitive filters and slicers.

- **Agile Project Management**
  - Demonstrated proficiency in Scrum methodology by structuring the project workflow in Jira, translating business requirements into technical tasks within an Agile framework.
 
- **End-to-End Analytics**
  - Successfully managed the full data lifecycle: from data modeling and ingestion in PostgreSQL to transformation with SQL and final presentation in a Power BI dashboard.
 
Dataset source from Kaggle: https://www.kaggle.com/datasets/yashdevladdha/uber-ride-analytics-dashboard
