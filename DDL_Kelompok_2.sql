create database proyek_kelompok_2;
go

use proyek_kelompok_2;
go

create table GAYA_HIDUP_DIGITAL
	(Lifestyle_ID			varchar(10),
	 Physical_Activity		int					check (Physical_Activity >= 0),
	 Hours_of_Sleep			int					check (Hours_of_Sleep >= 0 and Hours_of_Sleep <= 24),
	 Diet_Quality			varchar(20)				check (Diet_Quality in ('Poor', 'Fair', 'Good', 'Very Good', 'Excellent')),
	 Screen_Time_per_Day	numeric(5,1)			check (Screen_Time_per_Day >= 0),
	 primary key (Lifestyle_ID)
	);

create table ASASMEN_KLINIS
	(Asesmen_ID					varchar(10),
	 Stress_Level				int				check (Stress_Level >= 1 and Stress_Level <= 10),
	 Work_Hours_per_Day			int				check (Work_Hours_per_Day >= 0),
	 Overall_Wellbeing_Score	int				check (Overall_Wellbeing_Score >= 0 and Overall_Wellbeing_Score <= 10),
	 Mental_Health_Status		varchar(30)			check (Mental_Health_Status in ('None', 'Mild Anxiety', 'Moderate Anxiety', 'Severe Anxiety', 'Depression')),
	 primary key (Asesmen_ID)
	);

create table FAKTOR_SOSIO_FISIK
	(Sosio_Fisik_ID				varchar(10),
	 Social_Interaction_Freq	varchar(10)		check (Social_Interaction_Freq in ('Low', 'Moderate', 'High')),
	 Has_Close_Friends			varchar(5)		check (Has_Close_Friends in ('True', 'False')),
	 Substance_Use				varchar(20)		check (Substance_Use in ('None', 'Alcohol', 'Smoking', 'Both')),
	 Physical_Health_Condition	varchar(30)		check (Physical_Health_Condition in ('None', 'Hypertension', 'Obesity', 'Diabetes', 'Other Chronic Illness')),
	 primary key (Sosio_Fisik_ID)
	);

create table PEKERJA
	(Person_ID		varchar(10),
	 Age			int			check (Age > 0),
	 Gender			varchar(10)		check (Gender in ('Male', 'Female')),
	 Lifestyle_ID	varchar(10),
	 Asesmen_ID		varchar(10),
	 Sosio_Fisik_ID	varchar(10),
	 primary key (Person_ID),
	 foreign key (Lifestyle_ID) references GAYA_HIDUP_DIGITAL
		on delete set null,
	 foreign key (Asesmen_ID) references ASASMEN_KLINIS
		on delete set null,
	 foreign key (Sosio_Fisik_ID) references FAKTOR_SOSIO_FISIK
		on delete set null
	);

-- Catatan : Nama database yang digunakan adalah proyek_kelompok_2

-- Kelompok 2 Basis Data TIF A
