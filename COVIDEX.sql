CREATE DATABASE COVIDEX;
DROP DATABASE COVIDEX;
USE COVIDEX;

CREATE TABLE Personas (CURP varchar(20) not null,
Nombre1 varchar(20), Nombre2 varchar (20), Apellido1 varchar(20),
Apellido2 varchar(20), edad int, enf_Cr char(2), tel int, calle varchar (20), numero int, 
alcaldia varchar(20), EntidadFederal varchar(20),
PRIMARY KEY (CURP) );

CREATE TABLE VACUNA (Lote int, marca  varchar(10), Dosis int, fecha_cad date, fecha_ap datetime,
 sede varchar(30), CURP2 varchar(30),
Primary key(Lote, marca),
foreign key (CURP2) references Personas(CURP) 
);

drop table vacuna;

INSERT INTO PERSONAS VALUES("AAPC000607HQRBCRA5", "Juan", "Mario", "Her", "Ag", 21, "NO", 1111000, 
"Juan", 20, "GAM", "CDMX");
INSERT INTO PERSONAS VALUES("AAPC000607HQRBCRR4", "JuaN", "Lario", "Jer", "Wa", 20, "NO", 1111001, 
"Juan", 20, "VC", "Estado de México");
INSERT INTO PERSONAS VALUES("EEPC000607HQRBCRR4", "Jose", "Lario", "Aer", "We", 19, "SÍ", 1122001, 
"Romal", 76, "Ecatepec", "Estado de México");

INSERT INTO PERSONAS VALUES("EEPC000607HQRBCRR5", "La", "La", "Aer", "We", 19, "SÍ", 1122441, 
"Romal", 76, "Za", "Sinaloa");
INSERT INTO PERSONAS VALUES("EEPC000607HQRBCRR6", "Jose", "Equis", "A", "Re", 19, "SÍ", 1155001, 
"Romal", 76, "YUli", "Tabasco");
INSERT INTO PERSONAS VALUES("EEPC000607HQRBCRR7", "Jose", "Lario", "Aer", "We", 19, "SÍ", 1122001, 
"Romal", 76, "SA", "Quintana Roo");
INSERT INTO PERSONAS VALUES("EEPC000607HQRBCRR8", "Jose", "Lario", "Aer", "We", 19, "SÍ", 1122001, 
"Romal", 76, "OLI", "Baja California");
INSERT INTO PERSONAS VALUES("EEPC000607HQRBCRR9", "Jose", "Lario", "Aer", "We", 19, "SÍ", 1122001, 
"Romal", 76, "Es", "Guerrero");
INSERT INTO PERSONAS VALUES("EEPC000607HQRBCCR4", "Jose", "Lario", "Aer", "We", 19, "SÍ", 1122001, 
"Romal", 76, "Sam", "Nuevo León");
INSERT INTO PERSONAS VALUES("EEPC000607HQRBCJR4", "Jose", "Lario", "Aer", "We", 19, "SÍ", 1122001, 
"Romal", 76, "ER", "Colima");
INSERT INTO PERSONAS VALUES("EEPC000607HQRBCAR4", "Jose", "Lario", "Aer", "We", 19, "SÍ", 1122001, 
"Romal", 76, "ER", "Nayarit");
INSERT INTO PERSONAS VALUES("EEPC000607HQRBCPR4", "Jose", "Lario", "Aer", "We", 19, "SÍ", 1122001, 
"Romal", 76, "AO", "CDMX");
INSERT INTO PERSONAS VALUES("EEPC000607HQRBCZR4", "Jose", "Lario", "Aer", "We", 19, "SÍ", 1122001, 
"Romal", 76, "GA", "CDMX");
INSERT INTO PERSONAS VALUES("EEPC000607HQRBCER4", "Jose", "Lario", "Aer", "We", 19, "SÍ", 1122001, 
"Romal", 76, "Rey", "Tamaulipas");
INSERT INTO PERSONAS VALUES("EEPC044607HQRBCAR4", "Jose", "Lario", "Aer", "We", 19, "SÍ", 1122001, 
"Romal", 76, "Epec", "Estado de México");
INSERT INTO PERSONAS VALUES("EEPC000607HQRBCQR4", "Jose", "Lario", "Aer", "We", 19, "SÍ", 1122001, 
"Romal", 76, "Ec", "Estado de México");
INSERT INTO PERSONAS VALUES("EEPC000607HQRBCWR4", "Jose", "Lario", "Aer", "We", 19, "SÍ", 1122001, 
"Romal", 76, "RT", "Chiapas");
INSERT INTO PERSONAS VALUES("EEPC000607HQRBCXR4", "Jose", "Lario", "Aer", "We", 19, "SÍ", 1122001, 
"Romal", 76, "ZA", "Coahuila");
INSERT INTO PERSONAS VALUES("EEPC000607HQRBCFR4", "Jose", "Lario", "Aer", "We", 19, "SÍ", 1122001, 
"Romal", 76, "Sal", "Chihuahua");
INSERT INTO PERSONAS VALUES("AAPC400607HQRBCFR4", "Jose", "Lario", "Aer", "We", 19, "SÍ", 1122001, 
"Romal", 77, "Sal", "Zacatecas");

sELECT COUNT(*) FROM PERSONAS;

SELECT * FROM PERSONAS;

select * from VACUNA;

#delete from vacuna where Lote=01 ;

insert into vacuna values (01, "Ast", 1, "2022-12-12", "2021-10-23 13-00-00", "Biblioteca Vasconcelos", "AAPC000607HQRBCRA5"
);
insert into vacuna values (02, "Spu", 2, "2022-12-12", "2021-10-22 12-20-00", "Estadio VC", "AAPC000607HQRBCRR4"
);
insert into vacuna values (03, "Ast", 3, "2022-12-12", "2021-10-05 12:50:00", "Tecnológico Ecatepec ", "EEPC000607HQRBCRR4"
);
insert into vacuna values (04, "Pfizer", 1, "2022-12-12", "2021-10-19 13:00:00", "Teatro Culiacán", "EEPC000607HQRBCRR5"
);
insert into vacuna values (05, "Moderna", 2, "2022-12-12", "2021-10-11 14:00:00", "Estadio Yuli", "EEPC000607HQRBCRR6"
);
insert into vacuna values (06, "Ast", 2, "2022-12-12", "2021-10-12 15:00:00", "Teatro Roo", "EEPC000607HQRBCRR7"
);
insert into vacuna values (07, "Ast", 2, "2022-12-12", "2021-10-13 16:00:00", "Estadio California", "EEPC000607HQRBCRR8"
);
insert into vacuna values (08, "Ast", 3, "2022-12-12", "2021-10-17 18:00:00", "Playa Marquez", "EEPC000607HQRBCRR9"
);
insert into vacuna values (09, "Pfizer", 1, "2022-12-12", "2021-10-23 17:00:00", "Biblioteca Monterrey", "EEPC000607HQRBCCR4"
);
insert into vacuna values (010, "Spu", 3, "2022-12-12", "2021-10-29 12:30:00", "Estadio Colima", "EEPC000607HQRBCJR4"
);
insert into vacuna values (011, "Ast", 3, "2022-12-12", "2021-10-30 12:50:00", "Playa Guayabas", "EEPC000607HQRBCAR4"
);
insert into vacuna values (012, "Ast", 3, "2022-12-12", "2021-11-01 15:30:00", "Plaza de Toros", "EEPC000607HQRBCPR4"
);
insert into vacuna values (013, "Pfizer", 2, "2022-12-12", "2021-11-02 13:30:00", "Biblioteca Vasconcelos", "EEPC000607HQRBCZR4"
);
insert into vacuna values (014, "Moderna", 2, "2022-12-12", "2021-11-03 12:40:00", "Teatro Reynosa", "EEPC000607HQRBCER4"
);
insert into vacuna values (015, "Moderna", 1, "2022-12-12", "2021-11-07 12:50:00", "Tepec Sala", "EEPC044607HQRBCAR4"
);
insert into vacuna values (016, "Moderna", 1, "2022-12-12", "2021-11-19 13:00:00", "Estadio Neza", "EEPC000607HQRBCQR4"
);
insert into vacuna values (017, "Ast", 3, "2022-12-12", "2021-10-17 14:00:00", "Teatro Tuxtla", "EEPC000607HQRBCWR4"
);
insert into vacuna values (018, "Ast", 1, "2022-12-12", "2021-10-30 17:00:00", "Biblioteca Saltillo", "EEPC000607HQRBCXR4"
);
insert into vacuna values (019, "Moderna", 2, "2022-12-12", "2021-10-24 13:00:00", "Sala Parral", "EEPC000607HQRBCFR4"
);
insert into vacuna values (020, "Ast", 3, "2022-12-12", "2021-12-10 12:30:00", "Estadio Fresnillo", "AAPC400607HQRBCFR4"
);

select * from vacuna;
select * from personas;

select * from personas order by EntidadFederal asc;

select EntidadFederal "Estado", alcaldia "Municipio o alcaldia", fecha_ap "Fecha aplicación", 
count(CURP) "Total de personas" 
from Vacuna inner join Personas
on CURP=CURP2
group by fecha_Ap
order by EntidadFederal;

select * from vacuna join personas on CURP=CURP2;

select * from vacuna order by fecha_ap desc;

select EntidadFederal "Estado", count(CURP) "Vacunas aplicadas" from vacuna join personas
on CURP=CURP2
group by EntidadFederal;


select EntidadFederal "Estado", count(CURP) "Vacunas aplicadas" from vacuna join personas
on CURP=CURP2
group by EntidadFederal
order by count(CURP) desc limit 2;


select Marca, max(DOsis ) from vacuna;

