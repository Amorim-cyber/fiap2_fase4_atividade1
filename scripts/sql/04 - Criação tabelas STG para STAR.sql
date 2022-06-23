CREATE TABLE stg2_contrato AS SELECT * FROM dim_despesas_contrato WHERE ROWNUM < 1;
CREATE TABLE stg2_material AS SELECT * FROM dim_despesas_material WHERE ROWNUM < 1;
CREATE TABLE stg2_morador AS SELECT * FROM dim_despesas_morador WHERE ROWNUM < 1;
CREATE TABLE stg2_prestador AS SELECT * FROM dim_despesas_prestador WHERE ROWNUM < 1;
CREATE TABLE stg2_residencia AS SELECT * FROM dim_despesas_residencia WHERE ROWNUM < 1;
CREATE TABLE stg2_despesa (
    sk_data NUMBER NOT NULL,
    nk_contrato NUMBER NOT NULL,
    nk_material NUMBER NOT NULL,
    nk_morador NUMBER NOT NULL,
    nk_prestador NUMBER NOT NULL,
    nk_residencia NUMBER NOT NULL,
    dd_registro NUMBER(10) NOT NULL,
    dt_registro DATE,
    vl_diaria      NUMBER(6, 2),
    vl_material    NUMBER(6, 2),
    qt_material      NUMBER(6)
);