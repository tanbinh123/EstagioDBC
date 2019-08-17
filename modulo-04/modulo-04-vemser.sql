/*CREATE TABLE PAISES(
    ID_PAIS INTEGER DEFAULT 0 NOT NULL PRIMARY KEY,
    NOME VARCHAR2(100) NOT NULL 
);*/

/*CREATE SEQUENCE PAISES_SEQ
    START WITH 1
    INCREMENT BY 1;*/

/*CREATE TABLE ESTADOS(
    ID_ESTADO INTEGER DEFAULT 0 NOT NULL PRIMARY KEY,
    NOME VARCHAR2(100) NOT NULL,
    FK_ID_PAIS INTEGER NOT NULL,
    FOREIGN KEY (FK_ID_PAIS)
        REFERENCES PAISES(ID_PAIS)
);*/

/*CREATE SEQUENCE ESTADOS_SEQ
    START WITH 1
    INCREMENT BY 1;*/

/*CREATE TABLE CIDADES(
    ID_CIDADE INTEGER DEFAULT 0 NOT NULL PRIMARY KEY,
    NOME VARCHAR2(100) NOT NULL,
    FK_ID_ESTADO INTEGER NOT NULL,
    FOREIGN KEY (FK_ID_ESTADO) 
        REFERENCES ESTADOS(ID_ESTADO)
);*/

/*CREATE SEQUENCE CIDADES_SEQ
    START WITH 1
    INCREMENT BY 1;*/
    
/*CREATE TABLE BAIRROS(
    ID_BAIRRO INTEGER DEFAULT 0 NOT NULL PRIMARY KEY,
    NOME VARCHAR2(100) NOT NULL,
    FK_ID_CIDADE INTEGER NOT NULL,
    FOREIGN KEY (FK_ID_CIDADE) 
        REFERENCES CIDADES(ID_CIDADE)
);*/

/*CREATE SEQUENCE BAIRROS_SEQ
    START WITH 1
    INCREMENT BY 1;*/

/*CREATE TABLE ENDERECOS(
    ID_ENDERECO INTEGER DEFAULT 0 NOT NULL PRIMARY KEY,
    LOGRADOURO VARCHAR2(100) NOT NULL,
    NUMERO INTEGER NOT NULL,
    COMPLEMENTO VARCHAR2(100),
    FK_ID_BAIRRO INTEGER NOT NULL,
    FOREIGN KEY (FK_ID_BAIRRO) 
        REFERENCES BAIRROS(ID_BAIRRO)
);  */

/*CREATE SEQUENCE ENDERECOS_SEQ
    START WITH 1
    INCREMENT BY 1;*/
    
/*CREATE TABLE BANCOS(
    ID_BANCO INTEGER DEFAULT 0 NOT NULL PRIMARY KEY,
    CODIGO INTEGER DEFAULT 0 NOT NULL,
    NOME VARCHAR2(100) NOT NULL
);*/

/*CREATE SEQUENCE BANCO_SEQ
    START WITH 1
    INCREMENT BY 1;*/

/*CREATE TABLE AGENCIAS(
    ID_AGENCIA INTEGER DEFAULT 0 NOT NULL PRIMARY KEY,
    FK_ID_BANCO INTEGER DEFAULT 0 NOT NULL,
    CODIGO INTEGER DEFAULT 0 NOT NULL,
    NOME VARCHAR2(100) NOT NULL,
    FK_ID_ENDERECO INTEGER DEFAULT 0 NOT NULL,
    FOREIGN KEY (FK_ID_BANCO) 
        REFERENCES BANCOS(ID_BANCO),
    FOREIGN KEY (FK_ID_ENDERECO) 
        REFERENCES ENDERECOS(ID_ENDERECO)
);*/
    
/*CREATE SEQUENCE AGENCIAS_SEQ
    START WITH 1
    INCREMENT BY 1;*/
    
/*CREATE TABLE CORRENTISTAS(
    ID_CORRENTISTA INTEGER NOT NULL PRIMARY KEY,
    RAZAO_SOCIAL CHARACTER(11) DEFAULT NULL,
    CNPJ CHARACTER(20) DEFAULT NULL,
    TIPO VARCHAR2(30) DEFAULT NULL CHECK( TIPO IN ('PJ', 'PF', 'CONJUNTA', 'INVESTIMENTO') ) 
);

CREATE SEQUENCE CORRENTISTAS_SEQ
    START WITH 1
    INCREMENT BY 1;*/

/*CREATE TABLE AGENCIAS_X_CORRENTISTAS(
    ID_AGENCIA_X_CORRENTISTA INTEGER NOT NULL PRIMARY KEY,
    FK_ID_AGENCIA INTEGER DEFAULT 0 NOT NULL,
    FK_ID_CORRENTISTA INTEGER DEFAULT 0 NOT NULL,
    FOREIGN KEY (FK_ID_AGENCIA) 
        REFERENCES AGENCIAS(ID_AGENCIA),
    FOREIGN KEY (FK_ID_CORRENTISTA) 
        REFERENCES CORRENTISTAS(ID_CORRENTISTA)
);*/

/*CREATE SEQUENCE AGENCIAS_X_CORRENTISTAS_SEQ
    START WITH 1
    INCREMENT BY 1;*/

/*CREATE TABLE CLIENTES(
    ID_CLIENTE INTEGER NOT NULL PRIMARY KEY,
    CPF VARCHAR2(11) NOT NULL,
    NOME VARCHAR2(50) NOT NULL,
    RG VARCHAR2(20) NOT NULL,
    CONJUGE VARCHAR2(50) NOT NULL,
    ESTADO_CIVIL VARCHAR2(20) CHECK( ESTADO_CIVIL IN ('SOLTEIRO', 'CASADO', 'VIUVO', 'DIVORCIADO') ) NOT NULL,
    DATA_NASCIMENTO CHAR(10) NOT NULL,
    FK_ID_TELEFONE INTEGER NOT NULL,
    FK_ID_ENDERECO INTEGER NOT NULL,
    FOREIGN KEY (FK_ID_TELEFONE) 
        REFERENCES TELEFONES(ID_TELEFONE),
    FOREIGN KEY (FK_ID_ENDERECO)
        REFERENCES ENDERECOS(ID_ENDERECO)
);  */

/*CREATE SEQUENCE CLIENTES_SEQ
    START WITH 1
    INCREMENT BY 1;*/
    
/*CREATE TABLE EMAILS(
    ID_EMAIL INTEGER NOT NULL PRIMARY KEY,
    VALOR VARCHAR2(200) DEFAULT NULL,
    FK_ID_CLIENTE INTEGER NOT NULL,
    FOREIGN KEY (FK_ID_CLIENTE) 
        REFERENCES CLIENTES(ID_CLIENTE)
); */

/*CREATE SEQUENCE EMAILS_SEQ
    START WITH 1
    INCREMENT BY 1;*/
    
/*CREATE TABLE TELEFONES(
    ID_TELEFONE INTEGER NOT NULL PRIMARY KEY,
    NUMERO VARCHAR2(20) DEFAULT NULL,
    TIPO VARCHAR2(20) DEFAULT NULL CHECK( TIPO IN ('CELULAR', 'FIXO') ) 
);    */

/*CREATE SEQUENCE TELEFONES_SEQ
    START WITH 1
    INCREMENT BY 1;*/

/*CREATE TABLE CLIENTES_X_TELEFONES(
    ID INTEGER NOT NULL PRIMARY KEY,
    FK_ID_CLIENTE INTEGER NOT NULL,
    FK_ID_TELEFONE INTEGER NOT NULL,
    FOREIGN KEY (FK_ID_CLIENTE) 
        REFERENCES CLIENTES(ID_CLIENTE),
    FOREIGN KEY (FK_ID_TELEFONE) 
        REFERENCES TELEFONES(ID_TELEFONE)
);*/

/*
INSERT INTO PAISES (ID_PAIS, NOME) 
VALUES (PAISES_SEQ.NEXTVAL, 'BRASIL');
INSERT INTO PAISES (ID_PAIS, NOME) 
VALUES (PAISES_SEQ.NEXTVAL, 'ARGENTINA');
INSERT INTO PAISES (ID_PAIS, NOME) 
VALUES (PAISES_SEQ.NEXTVAL, 'CHILE');
INSERT INTO PAISES (ID_PAIS, NOME) 
VALUES (PAISES_SEQ.NEXTVAL, 'ENGLAND');
INSERT INTO PAISES (ID_PAIS, NOME) 
VALUES (PAISES_SEQ.NEXTVAL, 'EUA');
*/

/*SELECT ID_PAIS as ID,
    NOME as Nome 
    FROM PAISES
    WHERE ID_PAIS = 1;*/
    
/*SELECT * FROM PAISES ORDER BY ID_PAIS DESC*/

/*UPDATE PAISES SET NOME = 'ARGENTINA 2' WHERE ID_PAIS = 1*/

-- INSERT INTO ESTADOS (ID_ESTADO, NOME, FK_ID_PAIS) 
-- VALUES (ESTADOS_SEQ.NEXTVAL, 'PAR�', 3);

/*INSERT INTO ESTADOS (ID_ESTADO, NOME, FK_ID_PAIS) 
VALUES (ESTADOS_SEQ.NEXTVAL, 'TOCANTINS', 1);*/

/*INSERT INTO ESTADOS (ID_ESTADO, NOME, FK_ID_PAIS) 
VALUES (ESTADOS_SEQ.NEXTVAL, 'NA', 1)
INSERT INTO ESTADOS (ID_ESTADO, NOME, FK_ID_PAIS) 
VALUES (ESTADOS_SEQ.NEXTVAL, 'CALIFORNIA', 5)
INSERT INTO ESTADOS (ID_ESTADO, NOME, FK_ID_PAIS) 
VALUES (ESTADOS_SEQ.NEXTVAL, 'BUENOS AIRES', 2);
INSERT INTO ESTADOS (ID_ESTADO, NOME, FK_ID_PAIS) 
VALUES (ESTADOS_SEQ.NEXTVAL, 'BOROUGHS', 4);
INSERT INTO ESTADOS (ID_ESTADO, NOME, FK_ID_PAIS) 
VALUES (ESTADOS_SEQ.NEXTVAL, 'S�O PAULO', 1);
*/

/*INSERT INTO ESTADOS (ID_ESTADO, NOME, FK_ID_PAIS) 
VALUES (ESTADOS_SEQ.NEXTVAL, 'BAHIA', (SELECT ID_PAIS FROM PAISES WHERE NOME = 'BRASIL') );*/
/*UPDATE ESTADOS SET FK_ID_PAIS = 1 WHERE ID_ESTADO = 1;*/

--SELECT UF.ID_ESTADO ID, UF.NOME, P.NOME PAIS FROM ESTADOS UF INNER JOIN PAISES P ON UF.FK_ID_PAIS = P.ID_PAIS;
--SELECT UF.ID_ESTADO ID, UF.NOME, P.NOME PAIS FROM ESTADOS UF LEFT JOIN PAISES P ON UF.FK_ID_PAIS = P.ID_PAIS;
--SELECT UF.ID_ESTADO ID, UF.NOME, P.NOME PAIS FROM ESTADOS UF RIGHT JOIN PAISES P ON UF.FK_ID_PAIS = P.ID_PAIS;

--TRUNCATE TABLE PAISES;
/*COMMIT;
ROLLBACK;*/


/*INSERT INTO CIDADES (ID_CIDADE, NOME, FK_ID_ESTADO) 
VALUES (CIDADES_SEQ.NEXTVAL, 'NA', 4);*/
/*INSERT INTO CIDADES (ID_CIDADE, NOME, FK_ID_ESTADO) 
VALUES (CIDADES_SEQ.NEXTVAL, 'SAN FRANCISCO', 5);*/
/*INSERT INTO CIDADES (ID_CIDADE, NOME, FK_ID_ESTADO) 
VALUES (CIDADES_SEQ.NEXTVAL, 'LONDRES', 9);*/
/*INSERT INTO CIDADES (ID_CIDADE, NOME, FK_ID_ESTADO) 
VALUES (CIDADES_SEQ.NEXTVAL, 'ITU', 10);*/
/*INSERT INTO CIDADES (ID_CIDADE, NOME, FK_ID_ESTADO) 
VALUES (CIDADES_SEQ.NEXTVAL, 'BUENOS AIRES', 6);*/

/*INSERT INTO BAIRROS (ID_BAIRRO, NOME, FK_ID_CIDADE) 
VALUES (BAIRROS_SEQ.NEXTVAL, 'NA', 6);*/
/*INSERT INTO BAIRROS (ID_BAIRRO, NOME, FK_ID_CIDADE) 
VALUES (BAIRROS_SEQ.NEXTVAL, 'BETWEEN HYDE AND POWELL STREETS', 8);*/
/*INSERT INTO BAIRROS (ID_BAIRRO, NOME, FK_ID_CIDADE) 
VALUES (BAIRROS_SEQ.NEXTVAL, 'CROYDON', 11);*/
/*INSERT INTO BAIRROS (ID_BAIRRO, NOME, FK_ID_CIDADE) 
VALUES (BAIRROS_SEQ.NEXTVAL, 'QUALQUER', 12);*/
/*INSERT INTO BAIRROS (ID_BAIRRO, NOME, FK_ID_CIDADE) 
VALUES (BAIRROS_SEQ.NEXTVAL, 'CAMINITO', 13);*/

/*INSERT INTO ENDERECOS (ID_ENDERECO, LOGRADOURO, NUMERO, COMPLEMENTO, FK_ID_BAIRRO)
VALUES (ENDERECOS_SEQ.NEXTVAL, 'RUA TESTANDO', 55, 'LOJA 1',9);*/
/* INSERT INTO ENDERECOS (ID_ENDERECO, LOGRADOURO, NUMERO, COMPLEMENTO, FK_ID_BAIRRO)
VALUES (ENDERECOS_SEQ.NEXTVAL, 'RUA CARLITOS TEVES', 1743, 'APARTAMENTO 1003',9); */
/*INSERT INTO ENDERECOS (ID_ENDERECO, LOGRADOURO, NUMERO, COMPLEMENTO, FK_ID_BAIRRO)
VALUES (ENDERECOS_SEQ.NEXTVAL, 'RUA TESTING', 122, '' , 10);*/
/* INSERT INTO ENDERECOS (ID_ENDERECO, LOGRADOURO, NUMERO, COMPLEMENTO, FK_ID_BAIRRO)
VALUES (ENDERECOS_SEQ.NEXTVAL, 'RUA AR CONDICIONADO', 155, 'DE ESQUINA', 10); */
/*INSERT INTO ENDERECOS (ID_ENDERECO, LOGRADOURO, NUMERO, COMPLEMENTO, FK_ID_BAIRRO)
VALUES (ENDERECOS_SEQ.NEXTVAL, 'RUA TESING', 525, '' , 11);*/
/* INSERT INTO ENDERECOS (ID_ENDERECO, LOGRADOURO, NUMERO, COMPLEMENTO, FK_ID_BAIRRO)
VALUES (ENDERECOS_SEQ.NEXTVAL, 'RUA VELHO BARREIRO', 526, 'AO LADO DA PAMONHARIA', 11); */
/* INSERT INTO ENDERECOS (ID_ENDERECO, LOGRADOURO, NUMERO, COMPLEMENTO, FK_ID_BAIRRO)
VALUES (ENDERECOS_SEQ.NEXTVAL, 'AVENIDA JUNIOR GOMES', 1748, 'PREDIO', 11); */
/*INSERT INTO ENDERECOS (ID_ENDERECO, LOGRADOURO, NUMERO, COMPLEMENTO, FK_ID_BAIRRO)
VALUES (ENDERECOS_SEQ.NEXTVAL, 'RUA TESTANDO', 55, 'LOJA 2',9);*/
/* INSERT INTO ENDERECOS (ID_ENDERECO, LOGRADOURO, NUMERO, COMPLEMENTO, FK_ID_BAIRRO)
VALUES (ENDERECOS_SEQ.NEXTVAL, 'RUA JOSIVAL CRUZ', 57, 'VIZINHO DO ZUCKBERG', 9); */
/*INSERT INTO ENDERECOS (ID_ENDERECO, LOGRADOURO, NUMERO, COMPLEMENTO, FK_ID_BAIRRO)
VALUES (ENDERECOS_SEQ.NEXTVAL, 'RUA TESTANDO', 55, 'LOJA 3',9);*/
/* INSERT INTO ENDERECOS (ID_ENDERECO, LOGRADOURO, NUMERO, COMPLEMENTO, FK_ID_BAIRRO)
VALUES (ENDERECOS_SEQ.NEXTVAL, 'RUA LIXEIRO DA SILVA', 56, 'EM FRENTE AO CEMITERIO', 9); */
/*INSERT INTO ENDERECOS (ID_ENDERECO, LOGRADOURO, NUMERO, COMPLEMENTO, FK_ID_BAIRRO)
VALUES (ENDERECOS_SEQ.NEXTVAL, 'RUA DO MEIO', 2233, '', 12);*/
/* INSERT INTO ENDERECOS (ID_ENDERECO, LOGRADOURO, NUMERO, COMPLEMENTO, FK_ID_BAIRRO)
VALUES (ENDERECOS_SEQ.NEXTVAL, 'RUA JOAO LUCAS', 158, '', 12); */
/* INSERT INTO ENDERECOS (ID_ENDERECO, LOGRADOURO, NUMERO, COMPLEMENTO, FK_ID_BAIRRO)
VALUES (ENDERECOS_SEQ.NEXTVAL, 'RUA ANASTACIO', 56, 'EM FRENTE AO CEMITERIO', 12); */
/*INSERT INTO ENDERECOS (ID_ENDERECO, LOGRADOURO, NUMERO, COMPLEMENTO, FK_ID_BAIRRO)
VALUES (ENDERECOS_SEQ.NEXTVAL, 'RUA DO BOCA', 222, '', 13);*/
/* INSERT INTO ENDERECOS (ID_ENDERECO, LOGRADOURO, NUMERO, COMPLEMENTO, FK_ID_BAIRRO)
VALUES (ENDERECOS_SEQ.NEXTVAL, 'RUA GREMIO CAMPEAO', 56, 'MELHOR EM TUDO', 13); */
/* INSERT INTO ENDERECOS (ID_ENDERECO, LOGRADOURO, NUMERO, COMPLEMENTO, FK_ID_BAIRRO)
VALUES (ENDERECOS_SEQ.NEXTVAL, 'RUA RUTHERFORD', 1888, '', 13); */

/*INSERT INTO BANCOS (ID_BANCO, CODIGO, NOME) 
VALUES (BANCO_SEQ.NEXTVAL, 011, 'BANCO ALFA');

INSERT INTO BANCOS (ID_BANCO, CODIGO, NOME) 
VALUES (BANCO_SEQ.NEXTVAL, 241, 'BANCO BETA');

INSERT INTO BANCOS (ID_BANCO, CODIGO, NOME) 
VALUES (BANCO_SEQ.NEXTVAL, 307, 'BANCO OMEGA');*/

/*INSERT INTO AGENCIAS (ID_AGENCIA, FK_ID_BANCO, CODIGO, NOME, FK_ID_ENDERECO)
VALUES (AGENCIAS_SEQ.NEXTVAL, 1, 0001, 'WEB', 1);*/
/*INSERT INTO AGENCIAS (ID_AGENCIA, FK_ID_BANCO, CODIGO, NOME, FK_ID_ENDERECO)
VALUES (AGENCIAS_SEQ.NEXTVAL, 1, 0002, 'CALIFORNIA', 2);*/
/*INSERT INTO AGENCIAS (ID_AGENCIA, FK_ID_BANCO, CODIGO, NOME, FK_ID_ENDERECO)
VALUES (AGENCIAS_SEQ.NEXTVAL, 1, 0101, 'LONDRES', 3);*/
/*INSERT INTO AGENCIAS (ID_AGENCIA, FK_ID_BANCO, CODIGO, NOME, FK_ID_ENDERECO)
VALUES (AGENCIAS_SEQ.NEXTVAL, 2, 0001, 'WEB', 4);*/
/*INSERT INTO AGENCIAS (ID_AGENCIA, FK_ID_BANCO, CODIGO, NOME, FK_ID_ENDERECO)
VALUES (AGENCIAS_SEQ.NEXTVAL, 3, 0001, 'WEB', 5);*/
/*INSERT INTO AGENCIAS (ID_AGENCIA, FK_ID_BANCO, CODIGO, NOME, FK_ID_ENDERECO)
VALUES (AGENCIAS_SEQ.NEXTVAL, 3, 8761, 'ITU', 6);*/
/*INSERT INTO AGENCIAS (ID_AGENCIA, FK_ID_BANCO, CODIGO, NOME, FK_ID_ENDERECO)
VALUES (AGENCIAS_SEQ.NEXTVAL, 3, 4567, 'HERMANA', 7);*/

/* CREATE TABLE CORRENTISTAS_X_CLIENTES (
    ID INTEGER NOT NULL PRIMARY KEY,
    FK_ID_CORRENTISTA INTEGER NOT NULL,
    FK_ID_CLIENTE INTEGER NOT NULL,
    FOREIGN KEY (FK_ID_CORRENTISTA) 
        REFERENCES CORRENTISTAS(ID_CORRENTISTA),
    FOREIGN KEY (FK_ID_CLIENTE) 
        REFERENCES CLIENTES(ID_CLIENTE)
);

CREATE SEQUENCE CORRENTISTAS_X_CLIENTES_SEQ
    START WITH 1
    INCREMENT BY 1; */

/*INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 1, 1);
INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 2, 2);
INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 3, 3);
INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 1, 4);
INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 2, 5);
INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 3, 6);
INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 1, 7);
INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 2, 8);
INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 3, 9);
INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 1, 10);*/

/*INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 4, 22);
INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 4, 23);
INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 4, 24);
INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 4, 25);
INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 4, 26);
INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 4, 27);
INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 4, 28);
INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 4, 29);
INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 4, 30);
INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 4, 21);*/

/* INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 5, 31);
INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 6, 32);
INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 7, 33);
INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 5, 34);
INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 6, 35);
INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 7, 36);
INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 5, 37);
INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 6, 38);
INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 7, 39);
INSERT INTO AGENCIAS_X_CORRENTISTAS (ID_AGENCIA_X_CORRENTISTA, FK_ID_AGENCIA, FK_ID_CORRENTISTA)
VALUES (AGENCIAS_X_CORRENTISTAS_SEQ.NEXTVAL, 5, 40); */



-- 'PJ', 'PF', 'CONJUNTA', 'INVESTIMENTO'
-- BANCO ALFA
/*INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, 'TELEFONIA', '115648977', 'PJ');
INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, 'LOGISTICA', '123456789', 'PJ');
INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, '', '', 'CONJUNTA');
INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, '', '', 'CONJUNTA');
INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, '', '', 'CONJUNTA');
INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, '', '', 'INVESTIMENTO');
INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, '', '', 'INVESTIMENTO');
INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, '', '', 'PF');
INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, '', '', 'PF');
INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, '', '', 'PF');*/

 -- BANCO BETA
/*INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, 'HOSPITALAR', '115648977', 'PJ');
INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, 'SUPLEMENTOS', '123456789', 'PJ');
INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, '', '', 'CONJUNTA');
INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, '', '', 'CONJUNTA');
INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, '', '', 'CONJUNTA');
INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, '', '', 'INVESTIMENTO');
INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, '', '', 'INVESTIMENTO');
INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, '', '', 'PF');
INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, '', '', 'PF');
INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, '', '', 'PF');*/

-- BANCO OMEGA
/*INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, 'TABACARIA', '115648977', 'PJ');
INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, 'IMOVEIS', '123456789', 'PJ');
INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, '', '', 'CONJUNTA');
INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, '', '', 'CONJUNTA');
INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, '', '', 'CONJUNTA');
INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, '', '', 'INVESTIMENTO');
INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, '', '', 'INVESTIMENTO');
INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, '', '', 'PF');
INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, '', '', 'PF');
INSERT INTO CORRENTISTAS (ID_CORRENTISTA, RAZAO_SOCIAL, CNPJ, TIPO)
VALUES (CORRENTISTAS_SEQ.NEXTVAL, '', '', 'PF');*/

/*INSERT INTO EMAILS (ID_EMAIL, VALOR, FK_ID_CLIENTE)
VALUES (EMAILS_SEQ.NEXTVAL, 'GUSTAVOPOSSEBON@HOTMAIL.COM', 6);
INSERT INTO EMAILS (ID_EMAIL, VALOR, FK_ID_CLIENTE)
VALUES (EMAILS_SEQ.NEXTVAL, 'THOMASTIGANDO@LIVE.COM', 7);
INSERT INTO EMAILS (ID_EMAIL, VALOR, FK_ID_CLIENTE)
VALUES (EMAILS_SEQ.NEXTVAL, 'TURTADASILVA@GMAIL.COM.BR', 8);
INSERT INTO EMAILS (ID_EMAIL, VALOR, FK_ID_CLIENTE)
VALUES (EMAILS_SEQ.NEXTVAL, 'JUCADIAS@YAHOO.COM.RU', 9);
INSERT INTO EMAILS (ID_EMAIL, VALOR, FK_ID_CLIENTE)
VALUES (EMAILS_SEQ.NEXTVAL, 'ADELIACOSTA@HOTMAIL.COM.BR', 10);
INSERT INTO EMAILS (ID_EMAIL, VALOR, FK_ID_CLIENTE)
VALUES (EMAILS_SEQ.NEXTVAL, 'JERYDIGOMES@RATE.COM.EUA', 11);
INSERT INTO EMAILS (ID_EMAIL, VALOR, FK_ID_CLIENTE)
VALUES (EMAILS_SEQ.NEXTVAL, 'GISLANEPEREIRA@GMAIL.COM', 12);
INSERT INTO EMAILS (ID_EMAIL, VALOR, FK_ID_CLIENTE)
VALUES (EMAILS_SEQ.NEXTVAL, 'RONILDODUBARRO45@HOTMAIL.COM.BR', 13);
INSERT INTO EMAILS (ID_EMAIL, VALOR, FK_ID_CLIENTE)
VALUES (EMAILS_SEQ.NEXTVAL, 'FINDALGAANTONIA@RUTS.COM.RU', 14);
INSERT INTO EMAILS (ID_EMAIL, VALOR, FK_ID_CLIENTE)
VALUES (EMAILS_SEQ.NEXTVAL, 'NOEGILBERTO@FAMP.COMPANY.BR', 16);*/

/*INSERT INTO TELEFONES (ID_TELEFONE, NUMERO, TIPO)
VALUES (TELEFONES_SEQ.NEXTVAL,'063995855812', 'CELULAR');
INSERT INTO TELEFONES (ID_TELEFONE, NUMERO, TIPO)
VALUES (TELEFONES_SEQ.NEXTVAL,'085954851256', 'FIXO');
INSERT INTO TELEFONES (ID_TELEFONE, NUMERO, TIPO)
VALUES (TELEFONES_SEQ.NEXTVAL,'031121564987', 'CELULAR');
INSERT INTO TELEFONES (ID_TELEFONE, NUMERO, TIPO)
VALUES (TELEFONES_SEQ.NEXTVAL,'055226598222', 'FIXO');
INSERT INTO TELEFONES (ID_TELEFONE, NUMERO, TIPO)
VALUES (TELEFONES_SEQ.NEXTVAL,'080631446899', 'CELULAR');
INSERT INTO TELEFONES (ID_TELEFONE, NUMERO, TIPO)
VALUES (TELEFONES_SEQ.NEXTVAL,'015255482782', 'FIXO');
INSERT INTO TELEFONES (ID_TELEFONE, NUMERO, TIPO)
VALUES (TELEFONES_SEQ.NEXTVAL,'011589985232', 'CELULAR');
INSERT INTO TELEFONES (ID_TELEFONE, NUMERO, TIPO)
VALUES (TELEFONES_SEQ.NEXTVAL,'011537486789', 'FIXO');
INSERT INTO TELEFONES (ID_TELEFONE, NUMERO, TIPO)
VALUES (TELEFONES_SEQ.NEXTVAL,'025558525952', 'CELULAR');
INSERT INTO TELEFONES (ID_TELEFONE, NUMERO, TIPO)
VALUES (TELEFONES_SEQ.NEXTVAL,'087521662552', 'FIXO');*/

/*INSERT INTO CLIENTES_X_TELEFONES (ID, FK_ID_CLIENTE, FK_ID_TELEFONE)
VALUES (6,6,21);
INSERT INTO CLIENTES_X_TELEFONES (ID, FK_ID_CLIENTE, FK_ID_TELEFONE)
VALUES (7,7,22);
INSERT INTO CLIENTES_X_TELEFONES (ID, FK_ID_CLIENTE, FK_ID_TELEFONE)
VALUES (8,8,23);
INSERT INTO CLIENTES_X_TELEFONES (ID, FK_ID_CLIENTE, FK_ID_TELEFONE)
VALUES (9,9,24);
INSERT INTO CLIENTES_X_TELEFONES (ID, FK_ID_CLIENTE, FK_ID_TELEFONE)
VALUES (10,10,25);
INSERT INTO CLIENTES_X_TELEFONES (ID, FK_ID_CLIENTE, FK_ID_TELEFONE)
VALUES (11,11,26);
INSERT INTO CLIENTES_X_TELEFONES (ID, FK_ID_CLIENTE, FK_ID_TELEFONE)
VALUES (12,12,27);
INSERT INTO CLIENTES_X_TELEFONES (ID, FK_ID_CLIENTE, FK_ID_TELEFONE)
VALUES (13,13,28);
INSERT INTO CLIENTES_X_TELEFONES (ID, FK_ID_CLIENTE, FK_ID_TELEFONE)
VALUES (14,14,29);
INSERT INTO CLIENTES_X_TELEFONES (ID, FK_ID_CLIENTE, FK_ID_TELEFONE)
VALUES (16,16,30);*/

/* INSERT INTO CLIENTES (ID_CLIENTE, CPF, NOME, RG, CONJUGE, ESTADO_CIVIL, DATA_NASCIMENTO, FK_ID_ENDERECO)
VALUES (CLIENTES_SEQ.NEXTVAL, '12345678901', 'GUSTAVO POSSEBON', '854587', , 'SOLTEIRO', '20/08/1997', 9);
INSERT INTO CLIENTES (ID_CLIENTE, CPF, NOME, RG, CONJUGE, ESTADO_CIVIL, DATA_NASCIMENTO, FK_ID_ENDERECO)
VALUES (CLIENTES_SEQ.NEXTVAL, '69373761030', 'THOMAS TIGANDO', '4674663', , 'DIVORCIADO', '08/08/1986', 8);
INSERT INTO CLIENTES (ID_CLIENTE, CPF, NOME, RG, CONJUGE, ESTADO_CIVIL, DATA_NASCIMENTO, FK_ID_ENDERECO)
VALUES (CLIENTES_SEQ.NEXTVAL, '87633456789', 'TURTADA DE SILVA', '15564456', , 'CASADO', '13/01/1999', 1);
INSERT INTO CLIENTES (ID_CLIENTE, CPF, NOME, RG, CONJUGE, ESTADO_CIVIL, DATA_NASCIMENTO, FK_ID_ENDERECO)
VALUES (CLIENTES_SEQ.NEXTVAL, '45454478787', 'JUCA DIAS', '12345631', , 'CASADO', '04/09/1981', 3);
INSERT INTO CLIENTES (ID_CLIENTE, CPF, NOME, RG, CONJUGE, ESTADO_CIVIL, DATA_NASCIMENTO, FK_ID_ENDERECO)
VALUES (CLIENTES_SEQ.NEXTVAL, '15722598923', 'ADELIA COSTA', '78896456', , 'SOLTEIRO', '15/12/1933', 7);
INSERT INTO CLIENTES (ID_CLIENTE, CPF, NOME, RG, CONJUGE, ESTADO_CIVIL, DATA_NASCIMENTO, FK_ID_ENDERECO)
VALUES (CLIENTES_SEQ.NEXTVAL, '44872115471', 'JERYDI GOMES', '12124125', , 'VIUVO', '14/07/1992', 5);
INSERT INTO CLIENTES (ID_CLIENTE, CPF, NOME, RG, CONJUGE, ESTADO_CIVIL, DATA_NASCIMENTO, FK_ID_ENDERECO)
VALUES (CLIENTES_SEQ.NEXTVAL, '89856454554', 'GISLANE PEREIRA', '00012355', , 'SOLTEIRO', '01/01/2000', 3);
INSERT INTO CLIENTES (ID_CLIENTE, CPF, NOME, RG, CONJUGE, ESTADO_CIVIL, DATA_NASCIMENTO, FK_ID_ENDERECO)
VALUES (CLIENTES_SEQ.NEXTVAL, '16789789978', 'RONILDO NUNES DO BARRO', '07789559', , 'SOLTEIRO', '08/01/1945', 6);
INSERT INTO CLIENTES (ID_CLIENTE, CPF, NOME, RG, CONJUGE, ESTADO_CIVIL, DATA_NASCIMENTO, FK_ID_ENDERECO)
VALUES (CLIENTES_SEQ.NEXTVAL, '74144741158', 'FINDALGA ANTONIA', '11454578', , 'DIVORCIADO', '05/10/1990', 1);
INSERT INTO CLIENTES (ID_CLIENTE, CPF, NOME, RG, CONJUGE, ESTADO_CIVIL, DATA_NASCIMENTO, FK_ID_ENDERECO)
VALUES (CLIENTES_SEQ.NEXTVAL, '55552458211', 'NOE GILBERTO', '225782292', , 'VIVUO', '05/01/1989', 8); */

--BANCO ALFA
INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 1, 1);
INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 1, 2);
INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 1, 3);

INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 2, 2);
INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 2, 5);
INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 2, 6);

INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 3, 2);
INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 3, 3);

INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 4, 3);
INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 4, 7);

INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 5, 5);
INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 5, 6);

INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 6, 2);

INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 7, 3);

INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 7, 3);

INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 9, 4);

INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 10, 1);

--BANCO BETA
INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 1, 1);
INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 1, 2);
INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 1, 3);

INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 2, 2);
INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 2, 5);
INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 2, 6);

INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 3, 2);
INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 3, 3);

INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 4, 3);
INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 4, 7);

INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 5, 5);
INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 5, 6);

INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 6, 2);

INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 7, 3);

INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 7, 3);

INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 9, 4);

INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 10, 1);

--BANCO OMEGA
INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 1, 1);
INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 1, 2);
INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 1, 3);

INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 2, 2);
INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 2, 5);
INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 2, 6);

INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 3, 2);
INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 3, 3);

INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 4, 3);
INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 4, 7);

INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 5, 5);
INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 5, 6);

INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 6, 2);

INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 7, 3);

INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 7, 3);

INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 9, 4);

INSERT INTO CORRENTISTAS_X_CLIENTES(ID, FK_ID_CORRENTISTA, FK_ID_CLIENTE)
VALUES(CORRENTISTAS_X_CLIENTES_SEQ.NEXTVAL, 10, 1);

--Exercicio 3

--a)
SELECT BANCOS.NOME as Banco, P.NOME as Pais
FROM BANCOS 
JOIN AGENCIAS AG
  ON ( BANCOS.ID_BANCO = AG.fk_ID_BANCO)
JOIN ENDERECOS ENDE
  ON (AG.FK_ID_ENDERECO = ENDE.ID_ENDERECO)
JOIN BAIRROS BAI
  ON (ENDE.FK_ID_BAIRRO = BAI.ID_BAIRRO)
JOIN CIDADES CID
  ON (BAI.FK_ID_CIDADE = CID.ID_CIDADE)
JOIN ESTADOS EST
  ON (CID.FK_ID_ESTADO = EST.ID_ESTADO)
JOIN PAISES P
  ON (EST.FK_ID_PAIS = P.ID_PAIS);

--b
SELECT * 
FROM AGENCIAS 
LEFT JOIN ENDERECOS END1
    ON (AGENCIAS.FK_ID_ENDERECO = END1.ID_ENDERECO)
LEFT JOIN BAIRROS 
    ON (END1.FK_ID_BAIRRO = BAIRROS.ID_BAIRRO)
LEFT JOIN CIDADES 
    ON (BAIRROS.FK_ID_CIDADE = CIDADES.ID_CIDADE)
LEFT JOIN ESTADOS 
    ON (CIDADES.FK_ID_ESTADO = ESTADOS.ID_ESTADO)
LEFT JOIN PAISES 
    ON (ESTADOS.FK_ID_PAIS = PAISES.ID_PAIS)
LEFT JOIN AGENCIAS_X_CORRENTISTAS AGEN_COR 
    ON (AGENCIAS.ID_AGENCIA = AGEN_COR.FK_ID_AGENCIA) 
LEFT JOIN CORRENTISTAS 
    ON (AGEN_COR.FK_ID_CORRENTISTA = CORRENTISTAS.ID_CORRENTISTA)
LEFT JOIN CLIENTES_X_CORRENTISTAS CLI_COR 
    ON (CORRENTISTAS.ID_CORRENTISTA = CLI_COR.FK_ID_CORRENTISTA)
LEFT JOIN CLIENTES 
    ON (CLI_COR.FK_ID_CLIENTE = CLIENTES.ID_CLIENTE)
LEFT JOIN EMAILS 
    ON (CLIENTES.ID_CLIENTE = EMAILS.FK_ID_CLIENTE)
LEFT JOIN CLIENTES_X_TELEFONES CLI_TEL 
    ON (CLIENTES.ID_CLIENTE = CLI_TEL.FK_ID_CLIENTE)
LEFT JOIN TELEFONES 
    ON (CLI_TEL.FK_ID_TELEFONE = TELEFONES.ID_TELEFONE)
LEFT JOIN ENDERECOS END2 
    ON (CLIENTES.FK_ID_ENDERECO = END2.ID_ENDERECO) 
LEFT JOIN BAIRROS BAIR 
    ON (END2.FK_ID_BAIRRO = BAIR.ID_BAIRRO)
LEFT JOIN CIDADES CID 
    ON (BAIR.FK_ID_CIDADE = CID.ID_CIDADE)
LEFT JOIN ESTADOS EST 
    ON (CID.FK_ID_ESTADO = EST.ID_ESTADO)
LEFT JOIN PAISES PAIS 
    ON (EST.FK_ID_PAIS = PAIS.ID_PAIS);

--c
SELECT * 
FROM CLIENTES 
LEFT JOIN EMAILS 
    ON CLIENTES.ID_CLIENTE = EMAILS.FK_ID_CLIENTE
LEFT JOIN CLIENTES_X_TELEFONES CLI_TEL 
    ON CLIENTES.ID_CLIENTE = CLI_TEL.FK_ID_CLIENTE
LEFT JOIN TELEFONES
    ON CT.FK_ID_TELEFONE = TELEFONES.ID_TELEFONE
LEFT JOIN ENDERECOS 
    ON CLIENTES.FK_ID_ENDERECO = ENDERECOS.ID_ENDERECO
INNER JOIN BAIRROS 
    ON ENDERECOS.FK_ID_BAIRRO = BAIRROS.ID_BAIRRO 
INNER JOIN CIDADES 
    ON BAIRROS.FK_ID_CIDADE = CIDADES.ID_CIDADE
INNER JOIN ESTADOS 
    ON CIDADES.FK_ID_ESTADO = ESTADOS.ID_ESTADO
INNER JOIN PAISES 
    ON ESTADOS.FK_ID_PAIS = PAISES.ID_PAIS;