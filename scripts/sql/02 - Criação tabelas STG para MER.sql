CREATE TABLE stg_t2_cidade AS SELECT * FROM t2_cidade WHERE ROWNUM < 1;
CREATE TABLE stg_t2_contrato AS SELECT * FROM t2_contrato WHERE ROWNUM < 1;
CREATE TABLE stg_t2_endereco AS SELECT * FROM t2_endereco WHERE ROWNUM < 1;
CREATE TABLE stg_t2_material AS SELECT * FROM t2_material WHERE ROWNUM < 1;
CREATE TABLE stg_t2_morador AS SELECT * FROM t2_morador WHERE ROWNUM < 1;
CREATE TABLE stg_t2_prestador AS SELECT * FROM t2_prestador WHERE ROWNUM < 1;
CREATE TABLE stg_t2_profissao AS SELECT * FROM t2_profissao WHERE ROWNUM < 1;
CREATE TABLE stg_t2_registro AS SELECT * FROM t2_registro WHERE ROWNUM < 1;
CREATE TABLE stg_t2_residencia AS SELECT * FROM t2_residencia WHERE ROWNUM < 1;
CREATE TABLE stg_t2_st_con AS SELECT * FROM t2_st_con WHERE ROWNUM < 1;
CREATE TABLE stg_t2_st_mat AS SELECT * FROM t2_st_mat WHERE ROWNUM < 1;
CREATE TABLE stg_t2_st_mor AS SELECT * FROM t2_st_mor WHERE ROWNUM < 1;
CREATE TABLE stg_t2_st_prest AS SELECT * FROM t2_st_prest WHERE ROWNUM < 1;
CREATE TABLE stg_t2_st_res AS SELECT * FROM t2_st_res WHERE ROWNUM < 1;
CREATE TABLE stg_t2_tp_mor AS SELECT * FROM t2_tp_mor WHERE ROWNUM < 1;
CREATE TABLE stg_t2_tp_prest AS SELECT * FROM t2_tp_prest WHERE ROWNUM < 1;
CREATE TABLE stg_t2_tp_res AS SELECT * FROM t2_tp_res WHERE ROWNUM < 1;
CREATE TABLE stg_t2_uf AS SELECT * FROM t2_uf WHERE ROWNUM < 1;