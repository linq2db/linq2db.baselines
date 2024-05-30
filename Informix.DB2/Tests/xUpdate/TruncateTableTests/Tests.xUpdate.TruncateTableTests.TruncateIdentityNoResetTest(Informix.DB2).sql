BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS test_temp

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS test_temp
(
	ID     SERIAL   NOT NULL,
	Field1 Decimal  NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix

TRUNCATE TABLE test_temp

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO test_temp
(
	Field1
)
VALUES
(
	1
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO test_temp
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
	test_temp t1
ORDER BY
	t1.ID

BeforeExecute
-- Informix.DB2 Informix

TRUNCATE TABLE test_temp

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO test_temp
(
	Field1
)
VALUES
(
	1
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO test_temp
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
	test_temp t1
ORDER BY
	t1.ID

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS test_temp

