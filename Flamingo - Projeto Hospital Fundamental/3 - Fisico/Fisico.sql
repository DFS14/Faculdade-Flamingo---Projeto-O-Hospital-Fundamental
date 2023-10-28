-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE MÉDICO+CONSULTA (
Nome do Médico VARCHAR(10),
CRM VARCHAR(10),
Especialidade VARCHAR(10),
Data VARCHAR(10),
-- Erro: nome do campo duplicado nesta tabela!
Nome do Médico VARCHAR(10),
Horário VARCHAR(10),
-- Erro: nome do campo duplicado nesta tabela!
CRM VARCHAR(10),
-- Erro: nome do campo duplicado nesta tabela!
Especialidade VARCHAR(10),
Convênio VARCHAR(10),
PRIMARY KEY(CRM,Data)
)

CREATE TABLE ESPECIALIDADE (
Médico VARCHAR(10),
Dias de Atendimento NUMERIC(10),
CRM NUMERIC(10),
ID M. Especialista VARCHAR(10) PRIMARY KEY
)

CREATE TABLE CONVÊNIO (
Nº Carterinha NUMERIC(10),
Nome do Convênio VARCHAR(10),
CNPJ NUMERIC(10),
Data de Vencimento NUMERIC(10),
ID Convênio VARCHAR(10) PRIMARY KEY
)

CREATE TABLE PACIENTE (
CPF NUMERIC(10) PRIMARY KEY,
Nome Completo VARCHAR(10),
RG NUMERIC(10),
Endereço VARCHAR(10),
Telefone NUMERIC(10),
Data de Nascimento NUMERIC(10),
E-mail VARCHAR(10)
)

CREATE TABLE HOSPITAL (
Ficha do Paciente VARCHAR(10) PRIMARY KEY,
Doc. Identificação VARCHAR(10),
CRM VARCHAR(10),
Data VARCHAR(10),
FOREIGN KEY(Data,,) REFERENCES MÉDICO+CONSULTA (CRM,Data)
)

CREATE TABLE Especialidade Médica (
ID M. Especialista VARCHAR(10),
CRM VARCHAR(10),
Data VARCHAR(10),
FOREIGN KEY(ID M. Especialista) REFERENCES ESPECIALIDADE (ID M. Especialista),
FOREIGN KEY(Data,,) REFERENCES MÉDICO+CONSULTA (CRM,Data)
)

CREATE TABLE Dados do Paciente (
ID Convênio VARCHAR(10),
Ficha do Paciente VARCHAR(10),
FOREIGN KEY(ID Convênio) REFERENCES CONVÊNIO (ID Convênio),
FOREIGN KEY(Ficha do Paciente) REFERENCES HOSPITAL (Ficha do Paciente)
)

-- Erro: Nome de tabela duplicado (este erro compromete a integridade referencial)!
CREATE TABLE Dados do Paciente (
Ficha do Paciente VARCHAR(10),
CPF NUMERIC(10),
FOREIGN KEY(Ficha do Paciente) REFERENCES HOSPITAL (Ficha do Paciente),
FOREIGN KEY(CPF) REFERENCES PACIENTE (CPF)
)

