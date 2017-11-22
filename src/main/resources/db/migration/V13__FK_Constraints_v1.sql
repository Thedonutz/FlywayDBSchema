ALTER TABLE Pokemon
ADD FOREIGN KEY (PokeDex_Number) REFERENCES PokeDex_Global(PokeDex_Number);