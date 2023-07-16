create database WizCentralHospital

use WizCentralHospital

drop table HospDepartments

create table HospDepartments(
Department_id smallint unique,
Department_name varchar (8000),
constraint pk_dep_id primary key (Department_id)
)

select * from HospDepartments

insert into HospDepartments values
(1, 'Emergency department'),
(2, 'Cardiology department'),
(3, 'ICU department'),
(4, 'Neurology department'),
(5, 'Gynaecology department'),
(6, 'General surgery department'),
(7, 'Radiotherapy  department'),
(8, 'Pharmacy department'),
(9, 'Nutrition & Dietitics deparment'),
(10, 'Maternity department'),
(11, 'Veterinary department'),
(12, 'Maintenance department');

drop table HOD

 create table HOD (
 HOD_id int identity(1, 1) primary key,
 level varchar(10),
 job_title varchar(30),
 );

------------------------------------------

insert into HOD values 
('Lev 10', 'Supervisor'), 
('Lev 10', 'Supervisor'),
('Lev 10', 'Supervisor'),
('Lev 10', 'Supervisor'), 
('Lev 11', 'Supervisor'),
('Lev 11', 'Supervisor'), 
('Lev 11', 'Supervisor'), 
('Lev 12', 'Supervisor'), 
('Lev 12', 'Supervisor'),
('Lev 12', 'Supervisor'), 
('Lev 13', 'Supervisor'), 
('Lev 14', 'Supervisor'),
('Lev 15', 'Supervisor'), 
('Level 15', 'Supervisor'), 
('Lev 16', 'Senior Supervisor'), 
('Lev 16', 'Senior Supervisor'), 
('Lev 16', 'Senior Supervisor'), 
('Lev 16', 'Senior Supervisor'),
('Lev 17', 'Senior Supervisor'), 
('Lev 18', 'Top Supervisor');

-----------------------------------------

drop table employees

create table employees (
Emp_id smallint	UNIQUE, 
First_name varchar(15) not null,
Last_name varchar(15) not null,
Gender char(1) check (gender in ('M','F')),
Department_id smallint,
Department_name varchar (8000),
Qualifications varchar(30) not null,
Salary bigint,
Nationality varchar(20),
hire_date date,
phone_number varchar(11),
Hod_id int,
DOB date not null,
constraint fk_Hod_id foreign key (Hod_id) references HOD (Hod_id),
constraint fk_dep_id foreign key (Department_id) references HospDepartments (Department_id),
);

select * from employees 

--National Diploma == 20000
--Bachelors Degree == 50000
--Medical Director == 100000
--Master of Medicine == 200000
--Head of Maintenance == 40000
--Doctor Of Veterinary Medicine == 250000 

truncate table employees

insert into employees values 
(100, 'Adeolu', 'John', 'M', 1, 'Emergency department', 'National Diploma', 20000, 'Nigerian','2002-2-1','08023969956', NULL, '1990-01-10'),
(101, 'Akande', 'Joseph', 'M', 1, 'Emergency department', 'Bachelors Degree', 50000, 'Nigerian','2002-3-1','09028969156', 11, '1980-02-21'),
(102, 'James', 'John', 'M', 1, 'Emergency department', 'Master of Medicine', 200000, 'Nigerian','2002-2-1','08023969956', 18, '1968-03-23'),
(103, 'Lenovo', 'Sharon', 'F', 1, 'Emergency department', 'Medical Director', 100000, 'American','2002-3-1','08024569156', 16, '1980-02-20'),
(104, 'Paul', 'Stone', 'M', 1, 'Emergency department', 'Medical Director', 100000, 'British','2002-2-1','08078969156', 16, '1991-02-20'),
(105, 'Ajayi', 'Joshua', 'M', 2, 'Cardiology department', 'National Diploma', 20000, 'Nigerian','2002-3-1','08023969976', NULL, '1960-02-20'),
(106, 'Ajayi', 'Caleb', 'M', 2, 'Cardiology department', 'Bachelors Degree', 50000, 'Nigerian','2002-2-1','07096969156', 13, '1970-02-20'),
(107, 'Benjamin', 'Carson', 'M', 2, 'Cardiology department', 'Master of Medicine', 200000, 'Irish','2002-3-1','08023969107', 18, '1959-02-20'),
(108, 'Hillary', 'Jones', 'F', 2, 'Cardiology department', 'Medical Director', 100000, 'British','2002-2-1','08023954156', 17, '1990-07-20'),
(109, 'Olanrewaju', 'Steven', 'M', 2, 'Cardiology department', 'Medical Director', 100000, 'Nigerian','2002-3-1','08053969156', 14, '1971-02-20'),
(110, 'Ayo', 'Balogun', 'M', 3, 'ICU department', 'National Diploma', 20000, 'Nigerian','2002-2-1','09033969156', NULL, '1980-02-20'),

(111, 'Alinco', 'Enoch', 'M', 3, 'ICU department', 'Bachelors Degree', 50000, 'Nigerian','2002-3-1','08123963156', 13, '1979-12-20'),
(112, 'Aliya', 'Busayo', 'F', 3, 'ICU department', 'Master of Medicine', 200000, 'Nigerian','2002-2-1','08047969156', 18, '1950-10-20'),
(113, 'Lee', 'Yung', 'M', 3, 'ICU department', 'Medical Director', 100000, 'Chinese','2002-3-1','08045969156', 16, '1982-08-20'),
(114, 'Leonardo', 'Bostini', 'M', 3, 'ICU department', 'Medical Director', 200000, 'Italian','2002-2-1','08028669156', 15, '1983-07-20'),
(115, 'Chidibere', 'Amanda', 'F', 4, 'Neurology department', 'National Diploma', 20000, 'Nigerian','2002-3-1','08023997156', NULL, '1984-06-20'),
(116, 'kolade', 'Olamide', 'M', 4, 'Neurology department', 'Bachelors Degree', 50000, 'Nigerian','2002-3-1','08023969906', 12, '1985-05-20'),
(117, 'Adebayo', 'Aina', 'M', 4, 'Neurology department', 'Master of Medicine', 200000, 'Nigerian','2002-2-1','08018969156', 18, '1986-04-20'),
(118, 'Bakare', 'Dolapo', 'F', 4, 'Neurology department', 'Medical Director', 100000, 'Nigerian','2002-3-1','08023969156', 16, '1987-03-20'),
(119, 'Wright', 'Williams', 'M', 4, 'Neurology department', 'Medical Director', 100000, 'American','2002-3-1','08023089086', 17, '1988-02-20'),
(120, 'Bolaji', 'Abdullahi', 'M', 5, 'Gynaecology department', 'National Diploma', 20000, 'Nigerian','2002-3-1','09023969157', NULL, '1990-01-20'),

(121, 'Babalola', 'Isiah', 'M', 5, 'Gynaecology department', 'Bachelors Degree', 50000, 'Nigerian','2002-2-1','08023669156', 12, '1981-04-10'),
(122, 'Bukade', 'Esther', 'F', 5, 'Gynaecology department', 'Master of Medicine', 200000, 'Nigerian','2002-3-1','08023964156', 18, '1970-02-13'),
(123, 'Ifeanyi', 'Ubah', 'M', 5, 'Gynaecology department', 'Medical Director', 100000, 'Nigerian','2002-2-1','08123959156', 16, '1990-01-20'),
(124, 'Tuchel', 'Ariel', 'F', 5, 'Gynaecology department', 'Medical Director', 100000, 'German','2002-3-1','08023369116', 15, '1960-02-20'),
(125, 'Olaide', 'Akeem', 'M', 6, 'General surgery department', 'National Diploma', 20000, 'Nigerian','2002-2-1','08023969956', 11, '1973-01-20'),
(126, 'Yash', 'kachi', 'M', 6, 'General surgery department', 'Bachelors Degree', 50000, 'Indian','2002-3-1','08173969156', 13, '1998-02-20'),
(127, 'Jung', 'Pyo', 'M', 6, 'General surgery department', 'Master of Medicine', 200000, 'Korean','2002-2-1','08023968156', 18, '1991-02-20'),
(128, 'Pellegrinni', 'Chiesa', 'M', 6, 'General surgery department', 'Medical Director', 100000, 'Italian','2002-3-1','08023862156', 16, '1981-02-20'),
(129, 'Fernandes', 'Ariana', 'F', 6, 'General surgery department', 'Medical Director', 100000, 'Portugese','2002-2-1','08063969106', 15, '1961-02-20'),
(130, 'Abdul', 'Fatai', 'M', 7, 'Radiotherapy department', 'National Diploma', 20000, 'Nigerian','2002-3-1','09023979156', NULL, '1988-02-20'),

(131, 'Akare', 'Josiah', 'M', 7, 'Radiotherapy department', 'Bachelors Degree', 50000, 'Nigerian','2002-2-1','07023069196', 12, '1984-01-30'),
(132, 'Chidinma', 'Gloria', 'F', 7, 'Radiotherapy department', 'Master of Medicine', 200000, 'Nigerian','2002-3-1','09023990156', 17, '1980-11-20'),
(133, 'Kate', 'Wright', 'F', 7, 'Radiotherapy department', 'Medical Director', 100000, 'American','2002-2-1','08023969916', 16, '1985-02-20'),
(134, 'Williams', 'Bright', 'M', 7, 'Radiotherapy department', 'Medical Director', 100000, 'British','2002-3-1','08023967656', 17, '1993-02-20'),
(135, 'Opeyemi', 'Anuoluwa', 'F', 8, 'Pharmacy department', 'National Diploma', 20000, 'Nigerian','2002-2-1','08023934156', NULL, '1975-02-20'),
(136, 'Kamaru', 'Usman', 'M', 8, 'Pharmacy department', 'Bachelors Degree', 50000, 'Nigerian','2002-3-1','08123979156', 13, '1958-02-20'),
(137, 'Uche', 'Mercy', 'F', 8, 'Pharmacy department', 'Bachelors Degree', 50000, 'Nigerian','2002-2-1','08023569100', 12, '1978-02-20'),
(138, 'Philip', 'Matt', 'M', 8, 'Pharmacy department', 'Bachelors Degree', 50000, 'Nigerian','2002-3-1','08023129156', 14, '1980-02-22'),
(139, 'Mike' , 'Wrate', 'M', 8, 'Pharmacy department',  'Bachelors Degree', 50000, 'American','2002-2-1','09023979156', 13, '1990-05-16'),
(140, 'Simeone', 'Emmanuel', 'M', 9, 'Nutrition & Dietitics deparment', 'National Diploma', 20000, 'French','2002-3-1','08071969056', NULL, '1965-03-20'),

(141, 'Juan',  'Gracia', 'M' ,9, 'Nutrition & Dietitics deparment', 'Bachelors Degree', 50000, 'Spanish','2002-2-1','08123960016', 13, '1970-02-20'),
(142, 'Amadu',  'Bogo', 'M', 9, 'Nutrition & Dietitics deparment', 'Bachelors Degree', 50000, 'Nigerian','2002-3-1','07023969126', 14, '1981-02-20'),
(143, 'Isreal', 'Adesanya', 'M', 9, 'Nutrition & Dietitics deparment', 'Bachelors Degree', 50000, 'Nigerian','2002-2-1','08020101156', 15, '1982-02-20'),
(144, 'Favour', 'Abodunrin', 'F', 9, 'Nutrition & Dietitics deparment', 'Bachelors Degree', 50000, 'Nigerian','2002-3-1','08028969156', 15, '1983-02-20'),
(145, 'Adesanya', 'Jesutofunmi', 'F', 10, 'Maternity department', 'National Diploma', 20000, 'Nigerian','2002-2-1','08013969556', NULL, '1984-02-20'),
(146, 'Ifeoma', 'Eunice', 'F', 10, 'Maternity department', 'Bachelors Degree', 50000, 'Nigerian','2002-3-1','08013969106', NULL, '1970-02-20'),
(147, 'Adelaja', 'Esther', 'F', 10, 'Maternity department', 'Bachelors Degree', 50000, 'Nigerian','2002-2-1','08173969156', NULL, '1985-02-20'),
(148, 'Elizabeth', 'Wood', 'F', 10, 'Maternity department', 'Bachelors Degree', 50000, 'American','2002-3-1','08023908156', NULL, '1986-02-20'),
(149, 'Ernesto', 'Panev', 'M', 10, 'Maternity department', 'Bachelors Degree', 50000, 'Spanish','2002-2-1','08023905156', NULL, '1986-02-20'),
(150, 'Emmanuela', 'Angel', 'F', 11, 'Veterinary department', 'National Diploma', 20000, 'Nigerian','2002-3-1','08021369156', NULL, '1997-02-20'),

(151, 'Johnson', 'Michael', 'M', 11, 'Veterinary department', 'Bachelors Degree', 50000, 'Nigerian','2002-2-1','08023962256', NULL, '1984-01-18'),
(152, 'Arnold', 'Philip', 'M', 11, 'Veterinary department', 'Doctor of Veterinary Medicine', 250000, 'British','2002-3-1','08018469156', 17, '1985-01-20'),
(153, 'Scott', 'Mark', 'M', 11, 'Veterinary department', 'Doctor of Veterinary Medicine', 250000, 'Irish','2002-2-1','08023959156', 17, '1968-01-30'),
(154, 'Ji', 'Yung', 'M', 11, 'Veterinary department', 'Doctor of Veterinary Medicine', 250000, 'Japanese','2002-3-1','08023965256', 17, '1983-12-12'),

(255, 'Jacob', 'Alli', 'M', 12, 'Maintenance department', 'Bachelors Degree', 50000, 'Nigerian','2002-2-1','08021162256', NULL, '1980-03-26'),
(256, 'Tom', 'Hinks', 'M', 12, 'Maintenance department', 'National Diploma', 20000, 'British','2002-3-1','08018229156', NULL, '1979-02-20'),
(257, 'Scart', 'Matthew', 'M', 12, 'Maintenance department', 'National Diploma', 20000, 'Irish','2002-2-1','08025559156', NULL, '1997-02-20'),
(258, 'Jun', 'ki', 'M', 12, 'Maintenance department', 'National Diploma', 20000, 'Japanese','2002-3-1','08023965996', NULL, '1976-03-14'),
(259, 'Hasii', 'Tasanimo', 'M', 12, 'Maintenance department', 'Head Of Maintenance', 40000, 'Japanese','2002-3-1','08023965126', 18, '1976-01-01');


select * from employees where First_name = 'jacob'

select COUNT(*) FROM employees

---------------------------------------------------------------------------------------------------------

drop table emp_addresses

 create table emp_addresses (
 emp_id smallint unique,
 address_name varchar (100),
 Country varchar (20), check (country = 'Nigeria'),
 constraint fk_emp_id foreign key (emp_id) references employees (emp_id)
 );


 truncate table emp_addresses

 select * from emp_addresses

 
 insert into emp_addresses values 
(100, '2, Ajayi street, Anifalaje, Ibadan, Oyo','Nigeria'),
(101, '5, Ajao Estate, Yemetu, Ibadan, Oyo','Nigeria'),
(102, '6, Isokan Estate, General Gas, Ibadan, Oyo','Nigeria'),
(103, '4, Isokan Street, Akobo, Ibadan, Oyo','Nigeria'),
(104, '3, Flame Street, Anifalaje, Ibadan, Oyo','Nigeria'),
(105, '1, Plot 224, Solomon way, Garki, Abuja', 'Nigeria'),
(106, '9, Ajayi Road, Omolayo, Ibadan, Oyo','Nigeria'),
(107, '7, Aba Aba Close, Tella, Ibadan, Oyo','Nigeria'),
(108, '8, Yinup street, Air Force Road, Ibadan, Oyo','Nigeria'),
(109, '5, Ojurin street, Akobo, Ibadan, Oyo','Nigeria'),
(110, '6, Nickdel street, Gate, Ibadan, Oyo','Nigeria'),
(111, '5, Apatuma street, Agatu, Makurdi, Benue', 'Nigeria'),
(112, '8, Philip Johnson street, Philemon, Jos', 'Nigeria'),
(113, 'Plot 2, Tambuwal street, Sokoto', 'Nigeria'),
(114,'Usman dan fodio way, Kangiwa, Argungun', 'Nigeria'),
(115,'1, Dauda Oseni street, Ilasamaja, Isolo, Lagos', 'Nigeria'),
(116, 'Olowo tin fowo shanu shopping complex, Iwo road, Ibadan, Oyo','Nigeria'),
(117, 'Palms shopping Mall, Mobil, Ibadan, Oyo','Nigeria'),
(118, '5, Olorunsogo street, Gaa-Akanbi, Ilorin, Kwara', 'Nigeria'),
(119,'2, London street, Gabi area, Abuja, FCT', 'Nigeria' ),
(120,'9, Mbadinuju way, Oweri, Imo', 'Nigeria' ),
(121,'4, Audu Attah way, Lokoja, Kogi', 'Nigeria'),
(122, '5, Okija street, Awka, Anambra', 'Nigeria' ),
(123, 'Plot 11, Tambuwal street, Katsina', 'Nigeria'),
(124, '9, University way, Bosso street, Minna', 'Nigeria'),
(125, '5, Boko haram street, Babari way, Yobe', 'Nigeria' ),
(126, 'House 15, Mauni office side, Olorunsogo, Ilorin', 'Nigeria'),
(127,'7, Ogunlola avenue, Ibarapa, Ogbomoso, Oyo', 'Nigeria' ),
(128, '8, Ufol eka street, Uyo, Akwa-ibom', 'Nigeria'),
(129,'9, Auchi polytechnic route, Auchi, Edo', 'Nigeria' ),
(130,'2, Auchi polytechnic route, Auchi, Edo', 'Nigeria' ),
(131,'4, Jacosse route, Buju, Benin', 'Nigeria' ),
(132,'6, Steven Avenue, American Cnr', 'Nigeria' ),
(133,'7, Lord Lugard Road, Lagos', 'Nigeria' ),
(134,'2, sacej Street, Bayelsa,', 'Nigeria' ),
(135,'3, Ibadan polytechnic route, Ibadan', 'Nigeria' ),
(136,'9, chevron petroloeum company way, Portharcout, Rivers', 'Nigeria'),
(137,'House 2 Plot 5, PTDF office street, Yenagoa, Bayelsa', 'Nigeria'),
(138,'1, Baba Suntai street, Jalingo, Taraba', 'Nigeria' ),
(139,'8, Abiam ikot road, University street, Abakaliki, Ebonyi', 'Nigeria' ),
(140,'6, Okota road, Isolo, Lagos', 'Nigeria' ),
(141,'4, Sauara Akande close, ring road, Ibadan, Oyo', 'Nigeria'),
(142, '5, Ikere junction, Ado-Ekiti, Ekiti', 'Nigeria'),
(143,'Plot 15, Igbinedion avenue, Cross river', 'Nigeria' ),
(144,'9, chevron petroloeum company way, Portharcout, Rivers', 'Nigeria' ),
(145,'House 2 Plot 5, PTDF office street, Yenagoa, Bayelsa', 'Nigeria'),
(146, '7, Baba Suntai street, Jalingo, Taraba', 'Nigeria'),
(147,'9, Abiam street, Abakaliki, Ebonyi', 'Nigeria' ),
(148,'8, Okota main road, Isolo, Lagos', 'Nigeria' ),
(149, '3, Segun Akande street, off ring road, Ibadan, Oyo', 'Nigeria'),
(150,'9, Gidan kwano University , Minna, Niger', 'Nigeria' ),
(151, '7 Felele straight road, Felele-Challenge, Ibadan, Oyo', 'Nigeria'),
(152,'1, Kuto street, Abeokuta, Ogun', 'Nigeria' ),
(153,'7, Mbadinuju road, Owerri, Imo', 'Nigeria' ),
(154, '6, Okija street, Awka, Anambra', 'Nigeria'),
(255,'5, Philemon street, Philemon, Jos, Plateau', 'Nigeria'),
(256, 'Plot 24, Tambuwali avenue, adamawa', 'Nigeria'),
(257, '8, Secondary way, Bosso street, Minna, Niger', 'Nigeria'),
(258, '2 Oba road, Ikero street, Osun', 'Nigeria'),
(259, '5, Segun Akande avenue, St Annes, Ibadan, Oyo', 'Nigeria');

select COUNT(*) from emp_addresses

--------------------------------------------------------------------------------------------------------------

drop table payments

 create table payments (
 Hos_Pay_id varchar (20) primary key,
 Date_of_Payment date,
 Amount int
 );

 select * from payments

 truncate table payments

  insert into payments values 
('WZ01', '2019-07-11', 30000), 
('WZ02', '2018-12-10', 35200), 
('WZ03', '2020-02-21', 120200),
('WZ04', '2019-10-21', 400600), 
('WZ05', '2018-11-15', 35000), 
('WZ06', '2020-01-30', 210600), 
('WZ07', '2019-07-31', 23000), 
('WZ08', '2015-12-25', 70000), 
('WZ09', '2017-05-23', 16020), 
('WZ10', '2018-10-13', 25500), 
('WZ11', '2019-05-12', 36600), 
('WZ12', '2018-12-10', 43000), 
('WZ13', '2020-02-21', 150540),
('WZ14', '2019-10-21', 40900), 
('WZ15', '2018-11-17', 2500), 
('WZ16', '2020-02-29', 135900), 
('WZ17', '2019-04-30', 23700), 
('WZ18', '2015-10-24', 7050), 
('WZ19', '2017-06-23', 16030), 
('WZ20', '2018-07-14', 25600), 
('WZ21', '2019-03-13', 30600), 
('WZ22', '2018-07-11', 33700), 
('WZ23', '2020-03-22', 123450), 
('WZ24', '2019-08-24', 54300), 
('WZ25', '2018-09-16', 2500), 
('WZ26', '2020-03-31', 125600),
('WZ27', '2019-04-28', 23800), 
('WZ28', '2015-10-22', 70500), 
('WZ29', '2017-06-21', 15020), 
('WZ30', '2018-11-12', 25000);


--------------------------------------------------------------------------------------------------

drop table patients

create table patients (
patient_id int primary key,
emp_id smallint,
Hos_pay_id varchar(20),
first_name varchar(15),
last_name varchar (15),
Gender char(1) check (gender in ('M','F')),
Address varchar(100),
Department_id smallint,
Height varchar (5),
Weight varchar (5),
Diagnosis varchar (20),
Phone_number varchar(15),
Genotype varchar(5),
Blood_group varchar (5),
Species varchar (20),
DOB date,
 constraint fk_payments_id foreign key (Hos_pay_id) references payments (Hos_pay_id),
 constraint pk_emp_id foreign key (emp_id) references employees (emp_id),
 constraint ck_dep_id foreign key (Department_id) references HospDepartments (Department_id),
 );




select * from patients

truncate table patients

 SELECT * FROM employees where Department_id = 5
 select * from patients

 insert into patients values 
(1001, 126, 'WZ01' ,'Adelaja', 'Esther','F', 'No 4, Adekunle Avenue, Akogi estate, Ibadan', 6, '5ft', '60kg', 'HIV/AIDS', 07023564789, 'AA', 'A+', 'Human', '1976-04-03'),
(1002, 110, 'WZ02' ,'Adebola', 'Isaiah','M', '2, Brandon street, Port Harcourt', 3, '5ft', '53kg', 'Cancer', 08067564789, 'AS', 'AB', 'Human', '1964-04-03'),
(1003, 130, 'WZ03' ,'Williams ', 'Ekong','F', '8, Tuazenbe Road, Benin City', 7, '5.5ft', '60kg', 'Old age', 07023564789, 'AC', 'O-', 'Human', '1942-04-01'),
(1004, 125, 'WZ04' ,'Insah', 'Idong','M', '6, Bailly street, Jos', 6, '5ft', '57kg', 'Stroke', 08057564789, 'AS', 'AB', 'Human', '1964-05-03'),
(1005, 145, 'WZ05' ,'Odewunmi', 'Koker','M', '9, Mensah Lane, Port Harcourt', 10, '5ft', '70kg', 'Polio', 09057553789, 'AA', '0', 'Human', '1984-05-03'),
(1006, 125, 'WZ06' ,'Insah', 'Idong','M', '20, Chong Villa, Ibadan', 6, '5ft', '57kg', 'Stroke', 08057564789, 'AS', 'AB', 'Human', '1964-05-03'),
(1007, 100, 'WZ07' ,'Adekoya', 'Ajao','M', '16, Juan Road, Warri', 1, '5ft', '70kg', 'Lassa', 09057553789, 'AA', '0', 'Human', '1984-05-03'),
(1008, 120, 'WZ08' ,'Onuh', 'Hannah','F', '17, James Road, Benin city', 5, '5ft', '70kg', 'Cancer', 09057509789, 'AS', '0', 'Human', '1994-05-03'),
(1009, 120, 'WZ09' ,'Odukoya', 'Joseph','M', '20, Chong Villa, Ibadan', 7, '6ft', '67kg', 'Fever', 08157553789, 'AS', '0', 'Human', '1965-05-03'),
(1010, 120, 'WZ10' ,'Badejo', 'Hamed','M', '22, Marcus Crescent, Warri', 4, '6ft', '77kg', 'Fever', 08157853789, 'AS', 'A', 'Human', '1985-05-03'),
(1011, 120, 'WZ11' ,'Lukman', 'Hassan','M', '15, James Road, Benin town', 1, '5ft', '67kg', 'Measles', 08157853789, 'AA', '0', 'Human', '1965-05-03'),
(1012, 120, 'WZ12' ,'Mayokun', 'Onii','F', '18, Greenwood Avenue, Ibadan', 9, '6ft', '60kg', 'Gonorrea', 08127853789, 'AS', 'AB', 'Human', '2000-01-12'),

(1013, 126, 'WZ13' ,'Fathia', 'Nuru','F', '23, Jesse Way, Ibadan', 9, '5ft', '60kg', 'Tuberculosis', 07023564789, 'AS', 'B', 'Human', '1986-08-03'),
(1014, 110, 'WZ14' ,'Utaka', ' Hamme','M', '25, Sanchez Close, Ilorin', 10, '5ft', '53kg', 'Cancer', 08067564789, 'AS', 'AB', 'Human', '1964-04-03'),
(1015, 130, 'WZ15' ,'Williama ', 'Ekongi','F', '8, Tuazenbe Road, Benin City', 4, '4.5ft', '60kg', 'Old age', 07023564789, 'AC', 'O-', 'Human', '1942-04-01'),
(1016, 125, 'WZ16' ,'Dominic ', 'Nnaya','F', '26, Chris Lane, Oshogbo', 5, '5ft', '57kg', 'Stroke', 08057564789, 'AS', 'AB', 'Human', '1964-05-03'),
(1017, 145, 'WZ17' ,'Matthias ', 'John','M', '21, Martial Avenue, Oshogbo', 6, '6ft', '70kg', 'Polio', 09057553789, 'AA', '0', 'Human', '1999-05-01'),
(1018, 125, 'WZ18' ,'Emmanuel', 'Yimika','M', '56, Nury Avenue, Ikeja', 5, '5ft', '57kg', 'Stroke', 08057564789, 'AS', 'AB', 'Human', '1964-05-03'),


(1019, 145, 'WZ19' ,'Lolade ', 'Anuoluwa','F', '19, Tominay Road, Ibadan', 10, '5ft', '80kg', 'Old age', 09057553789, 'AA', '0', 'Human', '1934-05-03'),
(1020, 135, 'WZ20' ,'George ', 'Johnson','M', '33, Johnson Awe, O2 Apartments, Ibadan', 8, '6.6ft', '80kg', 'Cancer', 09057509789, 'AA', 'AB', 'Human', '1994-05-03'),
(1021, 136, 'WZ21' ,'Mattias ', 'Daniel','M', '21, Irewole Extension, Ibadan', 8, '6ft', '67kg', 'Fever', 08157553789, 'AS', '0', 'Human', '1965-05-03'),
(1022, 139, 'WZ22' ,'Jonathan ', 'David','M', '34, Bandy Road, Akobo', 8, '5.7ft', '87kg', 'Cancer', 08157853789, 'AS', 'A', 'Human', '1975-04-03'),
(1023, 100, 'WZ23' ,'Adenike', 'Aderonke','F', '39, Bostani Road, Ibadan', 1, '5ft', '67kg', 'Measles', 08157853780, 'AA', '0', 'Human', '1965-05-03'),
(1024, 105, 'WZ24' ,'Danjuma', 'Adenike','F', '01, Ifesowapo Avenue, Ibadan',2, '6ft', '60kg', 'Gonorrea', 08127853759, 'AA', 'AB', 'Human', '1987-01-12'),
(1025, 104, 'WZ25' ,'Adenik', 'Aderone','F', '39, Bostani Road, Ibadan', 1, '5ft', '67kg', 'Measles', 08157853780, 'AA', '0', 'Human', '1965-05-03'),
(1026, 109, 'WZ26' ,'Danjuma', 'Adenike','F', '01, Ifesowapo Avenue, Ibadan',2, '6ft', '60kg', 'Gonorrea', 08127853759, 'AA', 'AB', 'Human', '1987-01-12'),

(1027, 139, 'WZ27' ,'Flourish', 'Esther','F', '21, Oluwadara Close, Ikorodu', 2, '4.7ft', '87kg', 'Cancer', 08157853789, 'AA', 'AB', 'Human', '1965-04-03'),
(1028, 100, 'WZ28' ,'Hazan ', 'Goke','F', '2, Onifade street, Ibadan', 9, '5ft', '67kg', 'Measles', 08157853780, 'AA', '0', 'Human', '1965-05-03'),
(1029, 105, 'WZ29' ,'Ajayi', 'Ayodele','M', '7, O2 Arena, Ibadan',9, '5ft', '60kg', 'Gonorrea', 08327853759, 'AC', 'AB', 'Human', '1987-11-12'),

(1030, 104, 'WZ30' ,'Fikayo ', 'Tamilore','F', '2, Agaloke Estate, Ibadan', 7, '5ft', '67kg', 'Hiv/Aids', 08157853780, 'AA', '0', 'Human', '1965-05-03');


Select count (*) from patients

select * from patients where Gender ='F'


--------------------------------------------------------------------------------------------------------------------------------------------

--Division means the action of separating something into parts or the process of being separated.


drop table division

create table division (
Room_id varchar(5) primary key,
patient_id int,
admitted_date date,
discharge_date date,
constraint fk_patient_id_division foreign key (patient_id) references patients (patient_id)
);

truncate table division

select * from division

insert into division values 
('D1',1001, '2017-02-11', NULL),
('D2', 1002, '2020-02-15', NULL),
('D3', 1003, '2005-11-19', '2006-12-10'), 
('D4', 1004, '2015-01-30', '2015-02-10'),
('D5', 1005, '2020-02-24', NULL),
('D6', 1006, '1990-12-19', '1991-02-19'), 
('D7', 1007, '2011-06-20', '2011-06-25'), 
('D8', 1008, '2017-08-25', '2017-12-10'),
('D9', 1009, '2019-04-10', '2020-06-20'), 
('D10', 1010, '2000-09-19', '2001-11-10'), 
('D11', 1011, '2012-05-12', '2012-06-13'),
('D12', 1012, '2019-08-15', '2019-10-10'), 
('D13', 1013, '2019-02-17', '2020-01-20'), 
('D14', 1014, '2020-02-29', NULL),
('D15', 1015, '2020-01-18', NULL), 
('D16', 1016, '2009-03-10', '2010-01-10'), 
('D17', 1017, '2020-02-25', NULL),
('D18', 1018, '2019-11-25', NULL), 
('D19', 1019, '2016-04-13', '2017-10-15'), 
('D20', 1020, '2020-01-01', NULL),
('D21', 1021, '2020-02-29', NULL),
('D22', 1022, '2020-01-18', NULL), 
('D23', 1023, '2009-03-10', '2010-01-10'), 
('D24', 1024, '2020-02-25', NULL),
('D25', 1025, '2019-11-25', NULL), 
('D26', 1026, '2016-04-13', '2017-10-15'), 
('D27', 1027, '2020-01-01', NULL),
('D28', 1028, '2019-11-25', NULL), 
('D29', 1029, '2016-04-13', '2017-10-15'), 
('D30', 1030, '2019-03-10', NULL);

--------------------------------------------------------------------------------------------------------------------------------------------------------

--SQL query that shows the sum of salary per department
 select Department_id, sum(salary) as salary_sum
 from employees
 group by Department_id;

 
 --A query that shows each department salary and then the total Sum of all salaries
 select  Department_id, sum(salary) as Salary_sum from employees
 group by rollup (Department_id)


 --To show the average of salary by departments
 select Department_id, avg(salary) 'Average Salary' from employees group by Department_id

 --To get specific record from the employees table
select * from employees where Department_id  in ('1','2','3');

select * from employees where department_id  not in ('1','2','3','4','5','6') order by first_name;


---------------------------------------------------------------
--A query that checks whether an employee is a medical staff
 select emp_id, first_name, Last_name, iif (emp_id='103', 'Medical Staff', 'Non Medical Staff') Remark from employees
 ------------------------------------------------------------

--Dates and time
--To get the age of the employees
SELECT datediff (yy, dob, getdate() ) AS 'Age' FROM employees;

--To get the month and year of joining the hospital
select emp_id, first_name, last_name, datename (mm, hire_date) + ', ' + convert (varchar, datepart (yyyy, hire_date) ) 
as 'Day they were hired' from employees;

--To get employees year's spent in hospital
SELECT emp_id, first_name, last_name, DATEDIFF (year, hire_date, getdate() ) 'Years Spent' 
FROM employees;


--To get the number of days patient was admitted
declare @duration date
select @duration = discharge_date from division
if (@duration != NULL)
begin
	SELECT patient_id, room_id, DATEDIFF (day, admitted_date, discharge_date) AS 'Days of Admission' FROM division;
end
begin
	SELECT patient_id, room_id, DATEDIFF (day, admitted_date, getdate() ) AS 'Days of Admission' FROM division;
end


--To limit the query result
select top 4 * from employees order by salary;

select top 4 emp_id, first_name from employees order by salary;

select * from employees order by salary, first_name offset 5 rows fetch next 6 rows only;

select DISTINCT Qualifications from employees;

--Joining three tables together
select e.emp_id, first_name, last_name, Qualifications, d.Department_name, d.department_id, Country from employees e join HospDepartments d
on e.Department_id = d.Department_id
join emp_addresses l on e.emp_id = l.emp_id;


--To identify employees who are the head of departments
select e.emp_id, first_name + ' ' + last_name as 'Full Name', d.Department_name, Qualifications, 'Heads of ' + d.Department_name AS 'Master of Medicine'  
from employees e 
join HospDepartments d on e.Department_id = d.Department_id
join HOD h on e.hod_id = h.hod_id


--Using replicate function
select replicate('Master ', 1) + last_name + ' ' + first_name as fullname, Qualifications from employees
where Qualifications in ('Master of Medicine');


select replicate('Mrs ', 1) + last_name + ' ' + first_name as fullname, gender, DOB from employees
where gender = 'F'; 

--To generate abbreviated names for the employees
select left (first_name, 1) + '.' + last_name, phone_number, e.emp_id from employees e join emp_addresses a on e.emp_id = a.emp_id;


--To virtually auto generate email address for the employees
select first_name + ' ' + last_name as 'Full Name', phone_number, 'email' = last_name + '.' + first_name + '@' + 'Wizcentralhosp.com', e.emp_id, country
FROM employees e join emp_addresses a on e.emp_id = a.emp_id;


--To project the name of the employees formally, using IIF construct
SELECT emp_id, first_name, last_name, gender, Qualifications, iif (qualifications in ('Master of medicine'), 'Master ' + last_name, 
iif (qualifications like ('Doctor'), 'Doctor ' + first_name,
iif (gender like ('F'), 'Mrs. ' + last_name, 'Mr. ' + last_name))) AS 'Formal Name'
FROM employees;



--SUBQUERIES
--To get the adress of employees living in Specific Places
 select first_name, last_name, Nationality from employees where emp_id 
 in (select emp_id from emp_addresses where address_name = '3, Segun Akande street, off ring road, Ibadan, Oyo');


--A query to show admitted Patients to the hospital not more than 450 days ago
 select * from patients where patient_id 
 in (select patient_id from division where admitted_date >= getdate() - 450)


--To merge employee and patient table
merge employee t
using patients s
on (t.emp_id = s.patient_id)
when matched
then update set
t.first_name = s.first_name,
t.last_name = s.last_name,
t.gender = s.gender, 
t.phone_number = s.phone_number
when not matched by target
then insert (emp_id, first_name, last_name, gender, phone_number)
values (s.patient_id, s.first_name, s.last_name, s.gender, s.phone_number)
when not matched by source
then delete;


select * from employees

--Reports information about a database object 
sp_help employees;

sp_help patients

select * from division

--Thank You