DROP TABLE IF EXISTS m_class; 

CREATE TABLE m_class( 
    id SERIAL
    , label VARCHAR (8)
    , PRIMARY KEY (label)
); 

COMMENT 
    ON TABLE m_class IS '医療費区分'; 

COMMENT 
    ON COLUMN m_class.id IS 'ID'; 

COMMENT 
    ON COLUMN m_class.label IS '名称';

