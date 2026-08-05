-- 3. CREATE TABLE
CREATE TABLE players (
    player_id INT PRIMARY KEY,
    player_name VARCHAR(50),
    team_name VARCHAR(50),
    location VARCHAR(50),
    age INT,
    role_type VARCHAR(30),
    matches_played INT,
    runs_scored INT,
    wickets INT,
    salary DECIMAL(10,2),
    player_rank INT
);

INSERT INTO players VALUES
(1,'Virat Kohli','RCB','Bangalore',35,'Batsman',250,8000,5,17000000,1),
(2,'Rohit Sharma','MI','Mumbai',36,'Batsman',245,7200,10,16000000,2),
(3,'MS Dhoni','CSK','Chennai',42,'Wicket Keeper',260,5200,0,12000000,3),
(4,'Hardik Pandya','MI','Mumbai',31,'All Rounder',140,2500,60,15000000,4),
(5,'Jasprit Bumrah','MI','Mumbai',30,'Bowler',135,200,170,14000000,5),

(6,'KL Rahul','LSG','Lucknow',32,'Batsman',125,4800,0,15000000,6),
(7,'Shubman Gill','GT','Ahmedabad',25,'Batsman',100,3800,0,14000000,7),
(8,'Ruturaj Gaikwad','CSK','Chennai',28,'Batsman',85,3200,0,13000000,8),
(9,'Suryakumar Yadav','MI','Mumbai',33,'Batsman',150,4500,0,14500000,9),
(10,'Ravindra Jadeja','CSK','Chennai',35,'All Rounder',220,2800,160,16000000,10),

(11,'Andre Russell','KKR','Kolkata',36,'All Rounder',115,2400,90,12000000,11),
(12,'Sunil Narine','KKR','Kolkata',35,'Bowler',170,1300,175,12500000,12),
(13,'Jos Buttler','RR','Jaipur',34,'Wicket Keeper',105,3600,0,14000000,13),
(14,'Sanju Samson','RR','Jaipur',30,'Wicket Keeper',145,4100,0,13500000,14),
(15,'Yuzvendra Chahal','RR','Jaipur',34,'Bowler',160,50,190,11000000,15),

(16,'David Warner','DC','Delhi',37,'Batsman',180,6500,0,12500000,16),
(17,'Rishabh Pant','DC','Delhi',27,'Wicket Keeper',110,3200,0,15000000,17),
(18,'Axar Patel','DC','Delhi',31,'All Rounder',135,1400,110,9000000,18),
(19,'Shikhar Dhawan','PBKS','Punjab',38,'Batsman',220,6700,5,11000000,19),
(20,'Arshdeep Singh','PBKS','Punjab',25,'Bowler',75,20,95,8500000,20),

(21,'Faf du Plessis','RCB','Bangalore',39,'Batsman',140,4200,0,10000000,21),
(22,'Glenn Maxwell','RCB','Bangalore',35,'All Rounder',130,2900,40,12000000,22),
(23,'Mohammed Siraj','RCB','Bangalore',30,'Bowler',90,30,105,8000000,23),
(24,'Bhuvneshwar Kumar','SRH','Hyderabad',34,'Bowler',160,250,180,9500000,24),
(25,'Aiden Markram','SRH','Hyderabad',30,'Batsman',60,1600,10,7000000,25),

(26,'Heinrich Klaasen','SRH','Hyderabad',32,'Wicket Keeper',50,1800,0,8500000,26),
(27,'Pat Cummins','SRH','Hyderabad',31,'All Rounder',65,900,85,18000000,27),
(28,'Mitchell Starc','KKR','Kolkata',34,'Bowler',50,100,75,17500000,28),
(29,'Nitish Rana','KKR','Kolkata',31,'Batsman',105,2600,15,7500000,29),
(30,'Venkatesh Iyer','KKR','Kolkata',29,'All Rounder',70,1700,20,8000000,30),

(31,'Prithvi Shaw','DC','Delhi',25,'Batsman',80,2100,0,7500000,31),
(32,'Kuldeep Yadav','DC','Delhi',29,'Bowler',90,50,100,8500000,32),
(33,'Liam Livingstone','PBKS','Punjab',31,'All Rounder',60,1800,25,9000000,33),
(34,'Sam Curran','PBKS','Punjab',26,'All Rounder',55,1200,45,18500000,34),
(35,'Jitesh Sharma','PBKS','Punjab',30,'Wicket Keeper',45,950,0,6000000,35),

(36,'Yashasvi Jaiswal','RR','Jaipur',22,'Batsman',55,1900,0,8500000,36),
(37,'Trent Boult','RR','Jaipur',35,'Bowler',95,60,110,9000000,37),
(38,'Shimron Hetmyer','RR','Jaipur',28,'Batsman',70,1600,0,8000000,38),
(39,'R Ashwin','RR','Jaipur',38,'All Rounder',200,850,175,9500000,39),
(40,'Deepak Chahar','CSK','Chennai',32,'Bowler',75,200,85,9000000,40),

(41,'Matheesha Pathirana','CSK','Chennai',21,'Bowler',35,10,45,7000000,41),
(42,'Devon Conway','CSK','Chennai',33,'Batsman',45,1400,0,8000000,42),
(43,'Marcus Stoinis','LSG','Lucknow',35,'All Rounder',85,1900,40,9500000,43),
(44,'Nicholas Pooran','LSG','Lucknow',29,'Wicket Keeper',75,2200,0,11000000,44),
(45,'Quinton de Kock','LSG','Lucknow',32,'Wicket Keeper',100,3100,0,10000000,45),

(46,'Krunal Pandya','LSG','Lucknow',33,'All Rounder',115,1500,70,8500000,46),
(47,'Rashid Khan','GT','Ahmedabad',26,'Bowler',120,400,160,15000000,47),
(48,'Mohammed Shami','GT','Ahmedabad',34,'Bowler',110,100,140,12000000,48),
(49,'Sai Sudharsan','GT','Ahmedabad',23,'Batsman',40,1200,0,5000000,49),
(50,'Rahul Tewatia','GT','Ahmedabad',31,'All Rounder',85,1100,35,7000000,50),

(51,'Abhishek Sharma','SRH','Hyderabad',24,'All Rounder',65,1700,15,7500000,51),
(52,'Mayank Agarwal','SRH','Hyderabad',33,'Batsman',125,2700,0,8500000,52),
(53,'Tilak Varma','MI','Mumbai',22,'Batsman',50,1500,0,7000000,53),
(54,'Ishan Kishan','MI','Mumbai',26,'Wicket Keeper',95,2600,0,15000000,54),
(55,'Tim David','MI','Mumbai',28,'All Rounder',55,1200,5,8000000,55),

(56,'Harshal Patel','PBKS','Punjab',33,'Bowler',95,150,120,9000000,56),
(57,'Mukesh Kumar','DC','Delhi',30,'Bowler',45,20,50,6000000,57),
(58,'T Natarajan','SRH','Hyderabad',33,'Bowler',70,15,85,8500000,58),
(59,'Washington Sundar','SRH','Hyderabad',25,'All Rounder',65,700,55,7500000,59),
(60,'Rinku Singh','KKR','Kolkata',27,'Batsman',55,1400,0,8500000,60);


select * from players;

-- 1)find all players whose age is greter than 30
select * from players where age>30;
-- 2)find all players from team mi
select * from players where team_name='mi';
-- 3)find players whose salary is greter than 10,00000
select * from players where salary>1000000;
-- 4)find all bolwelers from srh team
select * from players where role_type='bowler' and team_name='srh';
-- 5)find players who scored more than 3000 runs
select * from players where runs_scored>3000;
-- find players whose wickets are greater than 100 
-- but i want only column player_id,player_name,location,
-- age,wickets,team_name  
select  player_id,player_name,location,age,wickets,team_name from players where wickets>100;
