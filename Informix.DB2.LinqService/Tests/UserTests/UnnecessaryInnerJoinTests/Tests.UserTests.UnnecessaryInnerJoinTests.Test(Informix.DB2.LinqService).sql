BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table1

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Table1
(
	Field1 SERIAL  NOT NULL,
	Field2 Int     NOT NULL,

	PRIMARY KEY (Field1)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table2

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Table2
(
	Field2 SERIAL  NOT NULL,

	PRIMARY KEY (Field2)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Field2
FROM
	Table2 t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			Table1 x
		WHERE
			t1.Field2 = x.Field2 AND x.Field1::BigInt IN (1, 2, 3)
	)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table1

