DROP TABLE IF EXISTS t_payee; 

CREATE TABLE t_payee( 
    id SERIAL
    , label VARCHAR (16)
    , PRIMARY KEY (label)
); 

COMMENT 
    ON TABLE t_payee IS '支払先'; 

COMMENT 
    ON COLUMN t_payee.id IS 'ID'; 

COMMENT 
    ON COLUMN t_payee.label IS '名称';

