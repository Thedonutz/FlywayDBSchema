ALTER TABLE Pokemon
ADD FOREIGN KEY (PokeDex_Number) REFERENCES PokeDex_Global(PokeDex_Number),
ADD FOREIGN KEY (Caught_By) REFERENCES Trainer(TrainerID),
ADD FOREIGN KEY (Nature) REFERENCES Natures(Name);

ALTER TABLE Pokemon_Of_Type
ADD FOREIGN KEY (PokeDex_Number) REFERENCES PokeDex_Global(PokeDex_Number),
ADD FOREIGN KEY (Type_ID) REFERENCES Types(Type_ID);

ALTER TABLE Pokemon_Origin
ADD FOREIGN KEY (PokeDex_Number) REFERENCES PokeDex_Global(PokeDex_Number),
ADD FOREIGN KEY (RegionName) REFERENCES Region(RegionName);

ALTER TABLE Pokemon_Evolved_From
ADD FOREIGN KEY (BasePokeDex_Number) REFERENCES PokeDex_Global(PokeDex_Number),
ADD FOREIGN KEY (Evolved_From_PokeDex_Number) REFERENCES PokeDex_Global(PokeDex_Number);

ALTER TABLE Gym_Members
ADD FOREIGN KEY (Gym_Name) REFERENCES Gym(Gym_Name),
ADD FOREIGN KEY (TrainerID) REFERENCES Trainer(TrainerID);

ALTER TABLE Gym
ADD FOREIGN KEY (LeaderID) REFERENCES Trainer(TrainerID),
ADD FOREIGN KEY (Gym_Type) REFERENCES Types(Type_ID),
ADD FOREIGN KEY (CityName) REFERENCES City(CityName);

ALTER TABLE Trainer
ADD FOREIGN KEY (City_From) REFERENCES City(CityName),
ADD FOREIGN KEY (Advised_By) REFERENCES Professor(ProfessorID);

ALTER TABLE City
ADD FOREIGN KEY (RegionName) REFERENCES Region(RegionName);

ALTER TABLE Professor
ADD FOREIGN KEY (Oversees_City) REFERENCES City(CityName);
