BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS SomeTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS SomeTable
(
	ClassProp BOOLEAN NOT NULL,
	Interface BOOLEAN NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO SomeTable
(
	ClassProp,
	Interface
)
VALUES
(
	't'::BOOLEAN,
	'f'::BOOLEAN
)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	t1.ClassProp,
	t1.Interface
FROM
	SomeTable t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS SomeTable

