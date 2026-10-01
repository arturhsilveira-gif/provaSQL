CREATE TABLE aeronaves(
id serial primary key,
modelo TEXT,
codigo_cauda VARCHAR(10) unique not null,
capacidade_maxima int
);

-----

CREATE TABLE aeronaves(
id serial primary key,
modelo TEXT,
codigo_cauda VARCHAR(10) unique not null,
capacidade_maxima int
);

-------

CREATE TABLE aeronaves(
id serial primary key,
modelo TEXT,
codigo_cauda VARCHAR(10) unique not null,
capacidade_maxima int
);



----------

CREATE TABLE aeronaves(
id serial primary key,
modelo TEXT,
codigo_cauda VARCHAR(10) unique not null,
capacidade_maxima int
);


---------

CREATE TABLE passagens(
id serial primary key,
voo_id int references voos(id),
passageiro_id int references passageiros(id),
assento VARCHAR(4) not null,
classe TEXT default 'economica' check (classe in ('economica', 'executiva')),
valor decimal not null
);

-------------inserindo dados

insert into aeronaves (modelo, codigo_cauda, capacidade_maxima)
VALUES
('boing', '1234567897', '14000'),
('teco-teco', '1234567217', '1470'),
('bi-plano', '1263547532', '4000'),
('hell cat', '1345743568', '2000'),
('cauda bifurcada', '1849274628', '2500')

-----------

insert into passageiros (nome, cpf, email)
VALUES
('noah', '12345678901', 'noah@gmail.com'),
('joão', '71625384956', 'jão@gmail.com'),
('daphini', '84756352439', 'daphini@gmail.com'),
('pedro', '19283746585', 'pedroressakra@gmail.com'),
('bertolo', '09123874564', 'anão@gmail.com')

-------

insert into pilotos (nome, codigo_anac, horas_voo)
VALUES
('artur hipolito', '123456', '6000'),
('nefario', '716253', '5000'),
('melzi', '847566', '4000'),
('theo', '192837', '3000'),
('jocaco', '091237', '1720')

----------
insert into passagens (assento, classe, valor)
VALUES
('f1', 'economica', '400.00'),
('f2', 'executiva', '500.00'),
('f3', 'executiva', '500.00'),
('f4', 'executiva', '500.00'),
('f5', 'economica', '400.00')

----------

insert into voos (numero_voo, origem, destino, status)
VALUES
('126', 'brasil', 'maldivas', 'concluida'),
('126', 'brasil', 'japão', 'andamento'),
('126', 'brasil', 'coreia do sul', 'andamento'),
('126', 'brasil', 'rio grande do sul', 'agendado'),
('126', 'brasil', 'caracs', 'em voo')
