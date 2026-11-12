Use inclusao_digital;

CREATE TABLE turmas(
id INT PRIMARY KEY
);
INSERT INTO turmas(id) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);
SELECT * FROM turmas;

CREATE TABLE alunos (
id INT PRIMARY KEY,
CPF_aluno VARCHAR(100),
nome_aluno VARCHAR(100),
idade_aluno INTEGER,
cidade_aluno VARCHAR(100),
id_turma INT NOT NULL,
FOREIGN KEY (id_turma) REFERENCES turmas(id)
);
INSERT INTO alunos(id, CPF_aluno, nome_aluno, idade_aluno, cidade_aluno, id_turma) VALUES
(1, 11079156941, 'Isadora', 91, 'Bal. Camboriú', 1),
(2, 53046187295, 'Antônio', 68, 'Itajaí', 2),
(3, 81249763520, 'Maria', 74, 'Itapema', 3),
(4, 30598214711, 'José', 82, 'Brusque', 4),
(5, 94713582046, 'Francisca', 65, 'Navegantes', 5),
(6, 15862497302, 'Geraldo', 88, 'Bal. Camboriú', 1),
(7, 62951438753, 'Terezinha', 71, 'Itajaí', 2),
(8, 40382915674, 'Luiz', 63, 'Itapema', 3),
(9, 72415938025, 'Ana', 79, 'Brusque', 4),
(10, 28164379508, 'Manoel', 93, 'Navegantes', 5),
(11, 89530716422, 'Raimunda', 67, 'Bal. Camboriú', 1),
(12, 35149208763, 'Carlos', 62, 'Itajaí', 2),
(13, 72418369504, 'Maria Helena', 75, 'Itapema', 3),
(14, 19583024766, 'Antônio Carlos', 69, 'Brusque', 4),
(16, 60251438971, 'Sebastião', 81, 'Navegantes', 5),
(17, 83920517462, 'Lourdes', 66, 'Bal. Camboriú', 6),
(18, 47139582044, 'Francisco', 73, 'Itajaí', 7),
(19, 28563419705, 'Marisa', 85, 'Itapema', 8),
(20, 91472538066, 'Walter', 64, 'Brusque', 9),
(21, 53061497281, 'Ivone', 70, 'Navegantes', 10),
(22, 16249738502, 'Nelson', 77, 'Bal. Camboriú', 6),
(23, 69482715309, 'Zélia', 61, 'Itajaí', 7),
(24, 38150492673, 'Jorge', 83, 'Itapema', 8),
(25, 75931648250, 'Cleusa', 68, 'Brusque', 9),
(26, 24816379511, 'Ademir', 72, 'Navegantes', 10),
(27, 80392514677, 'Vera', 90, 'Bal. Camboriú', 6);
SELECT * FROM alunos;

CREATE TABLE instrutores(
id INT PRIMARY KEY,
CPF_instrutor VARCHAR(100),
nome_instrutor VARCHAR(100),
idade_instrutor INTEGER,
cidade_instrutor VARCHAR(100)
);
INSERT INTO instrutores(id ,CPF_instrutor, nome_instrutor, idade_instrutor, cidade_instrutor) VALUES
(1, 22298766898, 'João', 19, 'Bal.Camboriú'),
(2, 41582963074, 'Pedro', 25, 'Itajaí'),
(3, 83025174691, 'Lucas', 31, 'Itapema'),
(4, 19476352088, 'Mariana', 42, 'Brusque'),
(5, 60251493725, 'Beatriz', 28, 'Navegantes'),
(6, 37149205683, 'Gabriel', 19, 'Bal. Camboriú'),
(7, 95830174266, 'Camila', 35, 'Itajaí'),
(8, 52418369012, 'Mateus', 22, 'Itapema');
SELECT * FROM instrutores;

CREATE TABLE nucleos_atendimento(
id INT PRIMARY KEY,
nome_nucleo VARCHAR(100),
nome_cidade VARCHAR(100),
endereco_nucleo VARCHAR(100)
);
INSERT INTO nucleos_atendimento(id, nome_nucleo, nome_cidade, endereco_nucleo) VALUES
(1, 'BC1', 'Bal. Camboriú', 'Uniavan'),
(2, 'BC2', 'Bal. Camboriú', 'Casa da família'),
(3, 'ITJ1', 'Itajaí', 'Av. Ministro Victor Konder, Beira Rio'),
(4, 'ITJ2', 'Itajaí', 'Prefeitura'),
(5, 'ITP1', 'Itapema', 'Av. Nereu Ramos, Meia Praia'),
(6, 'BRQ1', 'Brusque', 'Rodovia Antônio Heil, Centro'),
(7, 'NVG1', 'Navegantes', 'Av. João Sacavém, Centro');
SELECT * FROM nucleos_atendimento;

CREATE TABLE aulas(
id INT PRIMARY KEY,
nome_aula VARCHAR(100),
carga_horaria INTEGER
);
INSERT INTO aulas(id, nome_aula, carga_horaria)VALUES
(1, 'Letramento Digital Básico', 20),
(2, 'Comunicação e Redes Sociais',20),
(3, 'Utilitários e Serviços Cotidianos', 40),
(4, 'Saúde e Bem Estar', 20),
(5, 'Segurança Digital', 40);
select * from aulas;

CREATE TABLE cronograma(
id SERIAL PRIMARY KEY,
data_aula DATE,
hora_aula TIME,
id_aula INT NOT NULL,
id_instrutor INT NOT NULL,
id_turma INT NOT NULL,
id_nucleo INT NOT NULL,
FOREIGN KEY (id_aula) REFERENCES aulas(id),
FOREIGN KEY (id_instrutor) REFERENCES instrutores(id),
FOREIGN KEY (id_turma) REFERENCES turmas(id),
FOREIGN KEY (id_nucleo) REFERENCES nucleos_atendimento(id)
);

INSERT INTO cronograma(data_aula, hora_aula, id_aula, id_instrutor, id_turma, id_nucleo) VALUES
('2026-09-07', '09:00:00', 1, 1, 1, 1),
('2026-09-09', '14:00:00', 3, 6, 6, 2),
('2026-09-07', '09:00:00', 1, 2, 2, 3),
('2026-09-09', '14:00:00', 5, 7, 7, 4),
('2026-09-09', '14:00:00', 2, 3, 3, 5),
('2026-09-09', '18:00:00', 4, 3, 8, 5),
('2026-09-14', '9:00:00', 1, 4, 4, 6),
('2026-09-14', '18:00:00', 2, 4, 9, 6),
('2026-09-16', '14:00:00', 3, 5, 5, 7),
('2026-09-16', '18:00:00', 5, 5, 10, 7);
SELECT * FROM cronograma;

#Update de registro de alunos
UPDATE alunos
SET idade_aluno = 81
WHERE id = 1;
SELECT * FROM alunos
WHERE id = 1;

#Consultas na tabela 
#turmas que fazem a aula 1
SELECT id_turma, id_aula, nome_aula
FROM turmas t
JOIN cronograma c ON c.id_turma = t.id
JOIN aulas a ON a.id = c.id_aula
WHERE c.id_aula = 1;

#cronograma com todas as informações descritivas
SELECT data_aula, hora_aula, nome_aula, nome_instrutor, nome_nucleo, id_turma
FROM cronograma c
JOIN aulas a ON a.id = c.id_aula
JOIN instrutores i ON i.id = c.id_instrutor
JOIN nucleos_atendimento na ON na.id = c.id_nucleo;

#média de idade dos alunos
SELECT AVG(idade_aluno) as media_idade
FROM alunos;

#alunos com idade acima da média
SELECT *
FROM alunos
WHERE idade_aluno > (SELECT AVG(idade_aluno) FROM alunos)
ORDER BY idade_aluno DESC;

#quantidade de alunos por núcleo
SELECT COUNT(a.id) as quantidade_alunos, 
nome_nucleo
FROM alunos a
JOIN turmas t ON t.id = a.id_turma
JOIN cronograma c ON t.id = c.id_turma
JOIN nucleos_atendimento na ON na.id = c.id_nucleo
GROUP BY c.id_nucleo
ORDER BY quantidade_alunos DESC;

#Controle de acessos
CREATE USER 'administrador' IDENTIFIED BY 'admin123';
CREATE USER 'instrutor' IDENTIFIED BY 'inst456';
GRANT ALL PRIVILEGES ON * . * TO 'administrador';
GRANT SELECT, INSERT, DROP ON cronograma TO 'instrutor';
REVOKE DROP ON cronograma FROM 'instrutor';
FLUSH PRIVILEGES;


