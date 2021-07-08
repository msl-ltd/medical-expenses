DROP TABLE IF EXISTS t_expense; 

CREATE TABLE t_expense( 
    id SERIAL
    , day DATE
    , payee_id INTEGER NOT NULL
    , expense INTEGER NOT NULL
    , class_id INTEGER NOT NULL
    , PRIMARY KEY (id)
); 

COMMENT 
    ON TABLE t_expense IS '医療費'; 

COMMENT 
    ON COLUMN t_expense.id IS 'ID'; 

COMMENT 
    ON COLUMN t_expense.day IS '通院日'; 

COMMENT 
    ON COLUMN t_expense.payee_id IS '支払先ID'; 

COMMENT 
    ON COLUMN t_expense.expense IS '支払額'; 

COMMENT 
    ON COLUMN t_expense.class_id IS '医療費区分ID';

