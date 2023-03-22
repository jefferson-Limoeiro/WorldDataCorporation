CREATE TABLE IF NOT EXISTS linguagem(id int not null unique primary key,
                       nome varchar(200) not null unique);
CREATE TABLE IF NOT EXISTS moeda(id int not null unique primary key,
                    nome varchar(30) not null unique, sigla char(3) not null);
CREATE TABLE IF NOT EXISTS pais(id int not null unique primary key,
                    continente varchar(30) not null,
                    moeda int not null,
                    nome varchar(200) not null unique,
                    area double not null,
                    capital varchar(30) not null,
                    populacao int not null,
                    taxaCrecimento int not null,
                    taxaMOrtalidade int not null,
                    taxaiMigracao int not null,
                    taxaMigracao int not null,
                    pib int not null,
                    FOREIGN KEY (moeda) REFERENCES moeda(id) ON DELETE CASCADE ON UPDATE CASCADE);
CREATE TABLE IF NOT EXISTS pais_linguagem(pais_id int not null,
                            linguagem_id int not null,
                            PRIMARY KEY(pais_id,linguagem_id),
                            FOREIGN KEY (pais_id) REFERENCES pais(id) ON DELETE CASCADE ON UPDATE CASCADE,
                            FOREIGN KEY (linguagem_id) REFERENCES linguagem(id) ON DELETE CASCADE ON UPDATE CASCADE);