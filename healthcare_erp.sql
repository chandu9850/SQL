CREATE DATABASE healthcare_erp;

USE healthcare_erp;
CREATE TABLE doctors
(
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    department VARCHAR(50),
    experience INT,
    salary DECIMAL(10,2),
    joining_date DATE,
    phone VARCHAR(15),
    email VARCHAR(100)
);

INSERT INTO doctors VALUES
(101,'Dr. Amit Sharma','Cardiologist','Cardiology',12,150000,'2015-06-10','9876543210','amit@hospital.com'),

(102,'Dr. Priya Mehta','Neurologist','Neurology',10,140000,'2017-03-15','9876543211','priya@hospital.com'),

(103,'Dr. Raj Patel','Orthopedic','Orthopedics',15,160000,'2012-08-20','9876543212','raj@hospital.com'),

(104,'Dr. Sneha Joshi','Dermatologist','Dermatology',7,110000,'2020-01-10','9876543213','sneha@hospital.com'),

(105,'Dr. Rahul Verma','Pediatrician','Pediatrics',9,125000,'2018-05-12','9876543214','rahul@hospital.com'),

(106,'Dr. Neha Kulkarni','Gynecologist','Gynecology',11,145000,'2016-09-18','9876543215','neha@hospital.com'),

(107,'Dr. Vikram Singh','ENT Specialist','ENT',8,115000,'2019-11-05','9876543216','vikram@hospital.com'),

(108,'Dr. Pooja Deshmukh','Psychiatrist','Psychiatry',6,105000,'2021-02-14','9876543217','pooja@hospital.com'),

(109,'Dr. Karan Shah','General Physician','General Medicine',14,130000,'2013-07-22','9876543218','karan@hospital.com'),

(110,'Dr. Meera Nair','Oncologist','Oncology',18,200000,'2008-04-10','9876543219','meera@hospital.com');



CREATE TABLE diseases
(
    disease_id INT PRIMARY KEY,
    disease_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    severity VARCHAR(20),
    treatment_cost DECIMAL(10,2),
    description TEXT
);

INSERT INTO diseases VALUES
(201,'Diabetes','Chronic','Medium',25000,'Blood sugar disorder'),

(202,'Hypertension','Cardiovascular','Medium',18000,'High blood pressure'),

(203,'Heart Attack','Cardiovascular','High',85000,'Acute cardiac condition'),

(204,'Migraine','Neurological','Medium',15000,'Severe recurring headache'),

(205,'Fracture','Orthopedic','High',50000,'Bone injury'),

(206,'Asthma','Respiratory','Medium',22000,'Breathing disorder'),

(207,'Skin Allergy','Dermatological','Low',10000,'Allergic skin reaction'),

(208,'Pneumonia','Respiratory','High',45000,'Lung infection'),

(209,'Depression','Psychological','Medium',30000,'Mental health condition'),

(210,'Cancer','Oncology','Critical',250000,'Abnormal cell growth');

CREATE TABLE patients
(
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(100) NOT NULL,
    age INT,
    gender VARCHAR(10),
    phone VARCHAR(15),
    city VARCHAR(50),
    doctor_id INT,
    disease_id INT,
    admission_date DATE,
    discharge_date DATE,
    bill_amount DECIMAL(10,2),
    insurance_status BOOLEAN,

    FOREIGN KEY (doctor_id)
        REFERENCES doctors(doctor_id),

    FOREIGN KEY (disease_id)
        REFERENCES diseases(disease_id)
);

INSERT INTO patients VALUES

(1001,'Rahul Patil',45,'Male','9000000001','Pune',101,203,'2026-01-05','2026-01-12',95000,1),

(1002,'Priya Shah',35,'Female','9000000002','Mumbai',102,204,'2026-01-10','2026-01-13',18000,1),

(1003,'Amit Joshi',60,'Male','9000000003','Pune',103,205,'2026-01-15','2026-01-25',55000,0),

(1004,'Snehal Patil',28,'Female','9000000004','Nashik',104,207,'2026-02-01','2026-02-03',12000,1),

(1005,'Rohan Desai',12,'Male','9000000005','Pune',105,206,'2026-02-05','2026-02-10',25000,1),

(1006,'Pooja More',32,'Female','9000000006','Mumbai',106,201,'2026-02-10','2026-02-15',28000,1),

(1007,'Vikas Jadhav',50,'Male','9000000007','Pune',109,202,'2026-02-18','2026-02-22',20000,0),

(1008,'Neha Pawar',40,'Female','9000000008','Satara',101,201,'2026-03-01','2026-03-06',30000,1),

(1009,'Suresh Kale',55,'Male','9000000009','Pune',109,208,'2026-03-05','2026-03-15',48000,1),

(1010,'Kavita Rao',29,'Female','9000000010','Mumbai',108,209,'2026-03-10','2026-03-20',32000,0),

(1011,'Manoj Shinde',67,'Male','9000000011','Pune',110,210,'2026-03-15','2026-04-15',280000,1),

(1012,'Anjali Kulkarni',24,'Female','9000000012','Kolhapur',104,207,'2026-03-20','2026-03-23',11000,0),

(1013,'Sachin More',48,'Male','9000000013','Pune',101,202,'2026-04-01','2026-04-05',22000,1),

(1014,'Meena Joshi',58,'Female','9000000014','Nashik',102,204,'2026-04-05','2026-04-09',19000,1),

(1015,'Akash Pawar',19,'Male','9000000015','Pune',103,205,'2026-04-10','2026-04-18',60000,0);

-- 1) Display patient name, doctor name and disease name.
select p.patient_name,d.doctor_name,di.disease_name
from patients p inner join  doctors d on p.doctor_id=d.doctor_id
inner join diseases di on di.disease_id=p.disease_id;


-- 2) Display all doctors and their patients.
select p.patient_name,d.doctor_name
from patients p left join  doctors d on p.doctor_id=d.doctor_id;

-- 3) Find doctors who have no patients.
select p.patient_name,d.doctor_name,d.doctor_id
from patients p left join  doctors d on p.doctor_id=d.doctor_id
where  patient_id=null;


select * from patients;
select * from doctors;



-- 4) Find patients treated by Dr. Amit Sharma.
select p.patient_name,d.doctor_name
from patients p inner  join  doctors d on p.doctor_id=d.doctor_id
where doctor_name = "Dr. Amit Sharma";


-- 5) Find doctors who treat Diabetes patients.
select p.patient_name, d.doctor_name,di.disease_name
from patients p join  doctors d on p.doctor_id=d.doctor_id
join diseases di on di.disease_id=p.disease_id
where di.disease_name="Diabetes";

select * from diseases;
-- 6) Find patients whose bill is greater than the bill of patient Rahul Patil.
select patient_id, patient_name, max(bill_amount) as maximum
from patients
group by patient_id
order by maximum desc
limit 1;

select *
from patients
where bill_amount > (
    select bill_amount
    from patients
    where patient_name = 'Rahul Patil'
);


-- 7) Find patients whose age is greater than average patient age.
select *
from patients 
where age >(select avg(age) as avg_age
from patients);



-- 8) Find doctors whose total billing is above ₹50,000 using CTE.
with doctors_total_bill as 
(select doctor_name, sum(bill_amount) as total_bill
from doctors
inner join patients on
doctors.doctor_id =patients.doctor_id
group by doctor_name)
select * from doctors_total_bill where total_bill>50000;

select doctor_name, sum(bill_amount) as total_bill
from doctors
 join patients on
doctors.doctor_id =patients.doctor_id
group by doctor_name
having total_bill>50000; 

with doctors_total_bill as 
(select doctor_name, sum(bill_amount) as total_bill
from doctors
inner join patients on
doctors.doctor_id =patients.doctor_id
group by doctor_name)
select * from doctors_total_bill where total_bill>50000;

-- show each patient bill and previous patient 
select patient_id, patient_name ,bill_amount,
 lag (bill_amount) over() as previous_bill
 from patients;
 
 -- find the heighest billing patients for each doctors
select patient_id,patient_name,doctor_name,bill_amount,
first_value(patient_name) 
over(partition by doctor_name 
order by bill_amount desc) 
as highest_order_window
from patients inner join doctors on patients.doctor_id=doctors.doctor_id;

-- give a unique row no to every patient based on bill amount from heighest to lowestselect patient_id,patient_name,doctor_name,bill_amount,
select patient_id,patient_name,bill_amount,
row_number() 
over(order by bill_amount desc) 
as highest_order_window
from patients;

-- give a seprate row no to patient wihin each doctor order by bill amount
select patient_id,patient_name,bill_amount,doctor_id,
row_number() 
over(partition by doctor_id 
order by bill_amount ) 
as patient
from patients;


-- give a seprate row no to patient wihin each doctor order by bill amount
select patient_id,patient_name,bill_amount,doctor_id,
row_number() 
over(partition by doctor_id 
order by bill_amount ) 
as patient
from patients;

-- give a seprate row no to patient wihin each doctor order by bill amount
select patient_id,patient_name,bill_amount,doctor_id,
row_number() 
over(partition by doctor_id 
order by bill_amount ) 
as patient
from patients;








