BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestIdTrun

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE TestIdTrun
(
	ID     SERIAL   NOT NULL,
	Field1 Decimal  NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	1
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	1
)

BeforeExecute
-- Informix.DB2 Informix

SELECT SKIP 1 FIRST 2
	t1.ID,
	t1.Field1
FROM
	TestIdTrun t1
ORDER BY
	t1.ID

BeforeExecute
-- Informix.DB2 Informix

TRUNCATE TABLE TestIdTrun

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	1
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	1
)

BeforeExecute
-- Informix.DB2 Informix

SELECT SKIP 1 FIRST 2
	t1.ID,
	t1.Field1
FROM
	TestIdTrun t1
ORDER BY
	t1.ID

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE TestIdTrun

