BeforeExecute
-- Informix.DB2 Informix (asynchronously)

TRUNCATE TABLE test_temp

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

INSERT INTO test_temp
(
	Field1
)
VALUES
(
	1
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

INSERT INTO test_temp
(
	Field1
)
VALUES
(
	1
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1

SELECT SKIP @skip FIRST 2
	t1.ID,
	t1.Field1
FROM
	test_temp t1
ORDER BY
	t1.ID

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

TRUNCATE TABLE test_temp

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

INSERT INTO test_temp
(
	Field1
)
VALUES
(
	1
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

INSERT INTO test_temp
(
	Field1
)
VALUES
(
	1
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1

SELECT SKIP @skip FIRST 2
	t1.ID,
	t1.Field1
FROM
	test_temp t1
ORDER BY
	t1.ID

