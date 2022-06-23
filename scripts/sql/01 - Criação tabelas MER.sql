CREATE TABLE t2_cidade (
    cd_cidade  NUMBER(10) NOT NULL,
    nm_cidade  NVARCHAR2(100) NOT NULL,
    cd_uf      NVARCHAR2(2) NOT NULL
);

ALTER TABLE t2_cidade ADD CONSTRAINT t2_cidade_pk PRIMARY KEY ( cd_cidade );

CREATE TABLE t2_contrato (
    nr_contrato  NUMBER(10) NOT NULL,
    cd_contrato  NVARCHAR2(10) NOT NULL,
    dt_inicio    DATE NOT NULL,
    dt_termino   DATE NOT NULL,
    cd_status    NUMBER(10) NOT NULL
);

ALTER TABLE t2_contrato ADD CONSTRAINT t2_contrato_pk PRIMARY KEY ( nr_contrato );

CREATE TABLE t2_endereco (
    cd_endereco  NUMBER(10) NOT NULL,
    nm_endereco  NVARCHAR2(100) NOT NULL,
    nr_cep       NVARCHAR2(10) NOT NULL,
    cd_cidade    NUMBER(10) NOT NULL
);

ALTER TABLE t2_endereco ADD CONSTRAINT t2_end_pk PRIMARY KEY ( cd_endereco );

CREATE TABLE t2_material (
    cd_material  NUMBER(10) NOT NULL,
    nm_material  NVARCHAR2(200) NOT NULL,
    vl_material  NUMBER(6, 2) NOT NULL,
    cd_status    NUMBER(10) NOT NULL
);

ALTER TABLE t2_material ADD CONSTRAINT t2_material_pk PRIMARY KEY ( cd_material );

CREATE TABLE t2_morador (
    cd_morador     NUMBER(10) NOT NULL,
    nm_morador     NVARCHAR2(200) NOT NULL,
    tel_morador    NVARCHAR2(20) NOT NULL,
    email_morador  NVARCHAR2(150) NOT NULL,
    dt_nasc        DATE NOT NULL,
    ds_sexo        NVARCHAR2(10) NOT NULL,
    cd_tipo        NUMBER(10) NOT NULL,
    cd_status      NUMBER(10) NOT NULL
);

ALTER TABLE t2_morador ADD CONSTRAINT t2_morador_pk PRIMARY KEY ( cd_morador );

CREATE TABLE t2_prestador (
    cd_prestador     NUMBER(10) NOT NULL,
    nm_prestador     NVARCHAR2(200) NOT NULL,
    tel_prestador    NVARCHAR2(20) NOT NULL,
    email_prestador  NVARCHAR2(150) NOT NULL,
    dt_nasc          DATE NOT NULL,
    ds_sexo          NVARCHAR2(10) NOT NULL,
    cd_profissao     NUMBER(10) NOT NULL,
    cd_tipo          NUMBER(10) NOT NULL,
    cd_status        NUMBER(10) NOT NULL
);

ALTER TABLE t2_prestador ADD CONSTRAINT t2_prestador_pk PRIMARY KEY ( cd_prestador );

CREATE TABLE t2_profissao (
    cd_profissao  NUMBER(10) NOT NULL,
    nm_profissao  NVARCHAR2(150) NOT NULL
);

ALTER TABLE t2_profissao ADD CONSTRAINT t2_profissao_pk PRIMARY KEY ( cd_profissao );

CREATE TABLE t2_registro (
    nr_registro    NUMBER(10) NOT NULL,
    dt_registro    DATE NOT NULL,
    qt_material    NUMBER(6) NOT NULL,
    cd_residencia  NUMBER(10) NOT NULL,
    cd_material    NUMBER(10) NOT NULL,
    nr_contrato    NUMBER(10) NOT NULL,
    cd_prestador   NUMBER(10) NOT NULL
);

ALTER TABLE t2_registro ADD CONSTRAINT t2_registro_pk PRIMARY KEY ( nr_registro );

CREATE TABLE t2_residencia (
    cd_residencia   NUMBER(10) NOT NULL,
    nr_residencia   NUMBER(10) NOT NULL,
    nt_complemento  NVARCHAR2(20),
    cd_endereco     NUMBER(10) NOT NULL,
    cd_status       NUMBER(10) NOT NULL,
    cd_tipo         NUMBER(10) NOT NULL,
    cd_morador      NUMBER(10) NOT NULL
);

ALTER TABLE t2_residencia ADD CONSTRAINT t2_residencia_pk PRIMARY KEY ( cd_residencia );

CREATE TABLE t2_st_con (
    cd_status  NUMBER(10) NOT NULL,
    nm_status  NVARCHAR2(50) NOT NULL
);

ALTER TABLE t2_st_con ADD CONSTRAINT t2_st_con_pk PRIMARY KEY ( cd_status );

CREATE TABLE t2_st_mat (
    cd_status  NUMBER(10) NOT NULL,
    nm_status  NVARCHAR2(50) NOT NULL
);

ALTER TABLE t2_st_mat ADD CONSTRAINT t2_st_mat_pk PRIMARY KEY ( cd_status );

CREATE TABLE t2_st_mor (
    cd_status  NUMBER(10) NOT NULL,
    nm_status  NVARCHAR2(50) NOT NULL
);

ALTER TABLE t2_st_mor ADD CONSTRAINT t2_st_mor_pk PRIMARY KEY ( cd_status );

CREATE TABLE t2_st_prest (
    cd_status  NUMBER(10) NOT NULL,
    nm_status  NVARCHAR2(50) NOT NULL
);

ALTER TABLE t2_st_prest ADD CONSTRAINT t2_st_prest_pk PRIMARY KEY ( cd_status );

CREATE TABLE t2_st_res (
    cd_status  NUMBER(10) NOT NULL,
    nm_status  NVARCHAR2(50) NOT NULL
);

ALTER TABLE t2_st_res ADD CONSTRAINT t2_st_res_pk PRIMARY KEY ( cd_status );

CREATE TABLE t2_tp_mor (
    cd_tipo  NUMBER(10) NOT NULL,
    nm_tipo  NVARCHAR2(100) NOT NULL
);

ALTER TABLE t2_tp_mor ADD CONSTRAINT t2_tp_mor_pk PRIMARY KEY ( cd_tipo );

CREATE TABLE t2_tp_prest (
    cd_tipo    NUMBER(10) NOT NULL,
    nm_tipo    NVARCHAR2(100) NOT NULL,
    vl_diaria  NUMBER(6, 2) NOT NULL
);

ALTER TABLE t2_tp_prest ADD CONSTRAINT t2_tp_prest_pk PRIMARY KEY ( cd_tipo );

CREATE TABLE t2_tp_res (
    cd_tipo  NUMBER(10) NOT NULL,
    nm_tipo  NVARCHAR2(100) NOT NULL
);

ALTER TABLE t2_tp_res ADD CONSTRAINT t2_tp_res_pk PRIMARY KEY ( cd_tipo );

CREATE TABLE t2_uf (
    cd_uf  NVARCHAR2(2) NOT NULL,
    sg_uf  NVARCHAR2(2) NOT NULL
);

ALTER TABLE t2_uf ADD CONSTRAINT t2_uf_pk PRIMARY KEY ( cd_uf );

ALTER TABLE t2_endereco
    ADD CONSTRAINT t2_cidade_fk FOREIGN KEY ( cd_cidade )
        REFERENCES t2_cidade ( cd_cidade );

ALTER TABLE t2_registro
    ADD CONSTRAINT t2_contrato_fk FOREIGN KEY ( nr_contrato )
        REFERENCES t2_contrato ( nr_contrato );

ALTER TABLE t2_residencia
    ADD CONSTRAINT t2_end_fk FOREIGN KEY ( cd_endereco )
        REFERENCES t2_endereco ( cd_endereco );

ALTER TABLE t2_registro
    ADD CONSTRAINT t2_material_fk FOREIGN KEY ( cd_material )
        REFERENCES t2_material ( cd_material );

ALTER TABLE t2_residencia
    ADD CONSTRAINT t2_morador_fk FOREIGN KEY ( cd_morador )
        REFERENCES t2_morador ( cd_morador );

ALTER TABLE t2_registro
    ADD CONSTRAINT t2_prestador_fk FOREIGN KEY ( cd_prestador )
        REFERENCES t2_prestador ( cd_prestador );

ALTER TABLE t2_prestador
    ADD CONSTRAINT t2_profissao_fk FOREIGN KEY ( cd_profissao )
        REFERENCES t2_profissao ( cd_profissao );

ALTER TABLE t2_registro
    ADD CONSTRAINT t2_residencia_fk FOREIGN KEY ( cd_residencia )
        REFERENCES t2_residencia ( cd_residencia );

ALTER TABLE t2_contrato
    ADD CONSTRAINT t2_st_con_fk FOREIGN KEY ( cd_status )
        REFERENCES t2_st_con ( cd_status );

ALTER TABLE t2_material
    ADD CONSTRAINT t2_st_mat_fk FOREIGN KEY ( cd_status )
        REFERENCES t2_st_mat ( cd_status );

ALTER TABLE t2_morador
    ADD CONSTRAINT t2_st_mor_fk FOREIGN KEY ( cd_status )
        REFERENCES t2_st_mor ( cd_status );

ALTER TABLE t2_prestador
    ADD CONSTRAINT t2_st_prest_fk FOREIGN KEY ( cd_status )
        REFERENCES t2_st_prest ( cd_status );

ALTER TABLE t2_residencia
    ADD CONSTRAINT t2_st_res_fk FOREIGN KEY ( cd_status )
        REFERENCES t2_st_res ( cd_status );

ALTER TABLE t2_morador
    ADD CONSTRAINT t2_tp_mor_fk FOREIGN KEY ( cd_tipo )
        REFERENCES t2_tp_mor ( cd_tipo );

ALTER TABLE t2_prestador
    ADD CONSTRAINT t2_tp_prest_fk FOREIGN KEY ( cd_tipo )
        REFERENCES t2_tp_prest ( cd_tipo );

ALTER TABLE t2_residencia
    ADD CONSTRAINT t2_tp_res_fk FOREIGN KEY ( cd_tipo )
        REFERENCES t2_tp_res ( cd_tipo );

ALTER TABLE t2_cidade
    ADD CONSTRAINT t2_uf_fk FOREIGN KEY ( cd_uf )
        REFERENCES t2_uf ( cd_uf );