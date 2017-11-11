CREATE TABLE Pokemon (
 ID INT NOT NULL AUTO_INCREMENT,
 PokeDex_Number INT NOT NULL,
 Name VARCHAR(25) NOT NULL,
 Rarity CHAR(2) NOT NULL,
 Nature VARCHAR(20) NOT NULL,
 Sex CHAR(1),
 PRIMARY KEY( ID )
);

CREATE TABLE Types (
 Name VARCHAR(20) NOT NULL,
 PRIMARY KEY(NAME)
);

CREATE TABLE Pokemon_Of_Type (
 PokeDex_Number INT NOT NULL,
 Type VARCHAR(20) NOT NULL,
 PRIMARY KEY(PokeDex_Number, Type)
);

CREATE TABLE Pokemon_Caught_By (
 TrainerID INT NOT NULL,
 PokemonID INT NOT NULL,
 PRIMARY KEY(PokemonID, TrainerID)
);

CREATE TABLE Pokedex_Global (
 PokeDex_Number INT NOT NULL,
 Name VARCHAR(20) NOT NULL,
 PRIMARY KEY(PokeDex_Number, Name)
);

CREATE TABLE Pokemon_Origin (
 PokeDex_Number INT NOT NULL,
 RegionName VARCHAR(20),
 PRIMARY KEY( PokeDex_Number , RegionName)
);

CREATE TABLE Pokemon_Evolved_From (
 BasePokeDex_Number INT NOT NULL,
 Evolved_From_PokeDex_Number INT,
 PRIMARY KEY( BasePokeDex_Number, Evolved_From_PokeDex_Number)
);

CREATE TABLE Gym_Members (
 Gym_Name VARCHAR(20) NOT NULL,
 TrainerID INT NOT NULL,
 PRIMARY KEY( Gym_Name, TrainerID )
);

CREATE TABLE Natures (
 Name VARCHAR(20) NOT NULL,
 Description VARCHAR(255) NOT NULL UNIQUE,
 PRIMARY KEY (Name)
);

CREATE TABLE Gym (
 Gym_Name VARCHAR(20) NOT NULL,
 LeaderID INT NOT NULL,
 Gym_Type VARCHAR(20) NOT NULL,
 CityName VARCHAR(20),
 PRIMARY KEY (Gym_Name)
);

CREATE TABLE Trainer (
 TrainerID INT NOT NULL AUTO_INCREMENT,
 FirstName VARCHAR(25) NOT NULL,
 LastName VARCHAR(25),
 BirthDate DATE,
 City_From VARCHAR (20),
 Sex CHAR(1),
 PRIMARY KEY ( TrainerID )
);

CREATE TABLE City (
 CityName VARCHAR(20) NOT NULL,
 RegionName VARCHAR(20) NOT NULL,
 PRIMARY KEY ( CityName )
);

CREATE TABLE Region (
 RegionName VARCHAR(20) NOT NULL,
 PRIMARY KEY ( RegionName )
);

CREATE TABLE Professor (
 ProfessorID INT NOT NULL AUTO_INCREMENT,
 FirstName VARCHAR(25) NOT NULL,
 LastName VARCHAR(20),
 BirthDate DATE,
 Sex CHAR(1),
 Professor_Induction_Date DATE,
 Oversees_City VARCHAR(20) NOT NULL,
 PRIMARY KEY ( ProfessorID )
);

CREATE TABLE Professor_Advises (
 ProfessorID INT NOT NULL,
 TrainerID INT NOT NULL,
 PRIMARY KEY ( ProfessorID, TrainerID )
);
 
