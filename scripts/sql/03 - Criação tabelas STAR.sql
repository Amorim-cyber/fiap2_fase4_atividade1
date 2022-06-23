CREATE TABLE dim_despesas_contrato (
    sk_contrato  NUMBER(10) NOT NULL,
    nk_contrato  NUMBER(10),
    cd_contrato  NVARCHAR2(10),
    dt_inicio    DATE,
    dt_termino   DATE,
    nm_status    NVARCHAR2(50),
    DTC_INI DATE,
    DTC_FIM DATE,
    VERSION NUMBER(11)
);

ALTER TABLE dim_despesas_contrato ADD CONSTRAINT contrato_pk PRIMARY KEY ( sk_contrato );

CREATE TABLE dim_despesas_data (
    sk_data                NUMBER(15) NOT NULL,
    data                   DATE,
    ano                    SMALLINT,
    mes                    SMALLINT,
    dia                    SMALLINT,
    dia_semana             SMALLINT,
    dia_ano                SMALLINT,
    ano_bissexto           CHAR(1),
    dia_util               CHAR(1),
    fim_semana             CHAR(1),
    feriado                CHAR(1),
    pre_feriado            CHAR(1),
    pos_feriado            CHAR(1),
    nome_feriado           VARCHAR2(30),
    nome_dia_semana        VARCHAR2(15),
    nome_dia_semana_abrev  CHAR(3),
    nome_mes               VARCHAR2(15),
    nome_mes_abrev         CHAR(3),
    quinzena               SMALLINT,
    bimestre               SMALLINT,
    trimestre              SMALLINT,
    semestre               SMALLINT,
    nr_semana_mes          SMALLINT,
    nr_semana_ano          SMALLINT,
    estacao_ano            VARCHAR2(15),
    data_por_extenso       VARCHAR2(50),
    evento                 VARCHAR2(50)
);

ALTER TABLE dim_despesas_data ADD CONSTRAINT data_pk PRIMARY KEY ( sk_data );

CREATE TABLE dim_despesas_material (
    sk_material  NUMBER(10) NOT NULL,
    nk_material  NUMBER(10),
    nm_material  NVARCHAR2(200),
    vl_material  NUMBER(6, 2),
    nm_status    NVARCHAR2(50),
    DTC_INI DATE,
    DTC_FIM DATE,
    VERSION NUMBER(11)
);

ALTER TABLE dim_despesas_material ADD CONSTRAINT material_pk PRIMARY KEY ( sk_material );

CREATE TABLE dim_despesas_morador (
    sk_morador     NUMBER(10) NOT NULL,
    nk_morador     NUMBER(10),
    nm_morador     NVARCHAR2(200),
    tel_morador    NVARCHAR2(20),
    email_morador  NVARCHAR2(150),
    dt_nasc        DATE,
    ds_sexo        NVARCHAR2(10),
    nm_status      NVARCHAR2(50),
    nm_tipo        NVARCHAR2(100),
    DTC_INI DATE,
    DTC_FIM DATE,
    VERSION NUMBER(11)
);

ALTER TABLE dim_despesas_morador ADD CONSTRAINT morador_pk PRIMARY KEY ( sk_morador );

CREATE TABLE dim_despesas_prestador (
    sk_prestador     NUMBER(10) NOT NULL,
    nk_prestador     NUMBER(10),
    nm_prestador     NVARCHAR2(200),
    tel_prestador    NVARCHAR2(20),
    email_prestador  NVARCHAR2(150),
    dt_nasc          DATE,
    ds_sexo          NVARCHAR2(10),
    nm_profissao     NVARCHAR2(150),
    nm_status        NVARCHAR2(50),
    nm_tipo          NVARCHAR2(100),
    DTC_INI DATE,
    DTC_FIM DATE,
    VERSION NUMBER(11)
);

ALTER TABLE dim_despesas_prestador ADD CONSTRAINT prestador_pk PRIMARY KEY ( sk_prestador );

CREATE TABLE dim_despesas_residencia (
    sk_residencia   NUMBER(10) NOT NULL,
    nk_residencia   NUMBER(10),
    nr_residencia   NVARCHAR2(20),
    nt_complemento  NVARCHAR2(20),
    nm_endereco     NVARCHAR2(100),
    nr_cep          NVARCHAR2(10),
    nm_cidade       NVARCHAR2(100),
    sg_uf           NVARCHAR2(2),
    nm_status       NVARCHAR2(50),
    nm_tipo         NVARCHAR2(100),
    DTC_INI DATE,
    DTC_FIM DATE,
    VERSION NUMBER(11)
);

ALTER TABLE dim_despesas_residencia ADD CONSTRAINT residencia_pk PRIMARY KEY ( sk_residencia );

CREATE TABLE fat_despesas (
    sk_data        NUMBER(15) NOT NULL,
    sk_residencia  NUMBER(10) NOT NULL,
    sk_material    NUMBER(10) NOT NULL,
    sk_prestador   NUMBER(10) NOT NULL,
    sk_morador     NUMBER(10) NOT NULL,
    sk_contrato    NUMBER(10) NOT NULL,
    dd_registro    NUMBER(10) NOT NULL,
    vl_diaria      NUMBER(6, 2),
    vl_material    NUMBER(6, 2),
    qt_material    NUMBER(6)
);

ALTER TABLE fat_despesas
    ADD CONSTRAINT fat_despesas_pk PRIMARY KEY ( dd_registro,
                                                 sk_data,
                                                 sk_residencia,
                                                 sk_material,
                                                 sk_prestador,
                                                 sk_morador,
                                                 sk_contrato );

ALTER TABLE fat_despesas
    ADD CONSTRAINT contrato_sk FOREIGN KEY ( sk_contrato )
        REFERENCES dim_despesas_contrato ( sk_contrato );

ALTER TABLE fat_despesas
    ADD CONSTRAINT data_sk FOREIGN KEY ( sk_data )
        REFERENCES dim_despesas_data ( sk_data );

ALTER TABLE fat_despesas
    ADD CONSTRAINT material_sk FOREIGN KEY ( sk_material )
        REFERENCES dim_despesas_material ( sk_material );

ALTER TABLE fat_despesas
    ADD CONSTRAINT morador_sk FOREIGN KEY ( sk_morador )
        REFERENCES dim_despesas_morador ( sk_morador );

ALTER TABLE fat_despesas
    ADD CONSTRAINT prestador_sk FOREIGN KEY ( sk_prestador )
        REFERENCES dim_despesas_prestador ( sk_prestador );

ALTER TABLE fat_despesas
    ADD CONSTRAINT residencia_sk FOREIGN KEY ( sk_residencia )
        REFERENCES dim_despesas_residencia ( sk_residencia );