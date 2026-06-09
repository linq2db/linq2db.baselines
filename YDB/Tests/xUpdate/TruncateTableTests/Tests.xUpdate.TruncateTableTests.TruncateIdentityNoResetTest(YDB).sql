-- YDB Ydb

DELETE FROM test_temp

-- YDB Ydb

INSERT INTO test_temp
(
	Field1
)
VALUES
(
	Decimal('1', 22, 9)
)

-- YDB Ydb

INSERT INTO test_temp
(
	Field1
)
VALUES
(
	Decimal('1', 22, 9)
)

-- YDB Ydb
DECLARE $skip Int32
SET     $skip = 1

SELECT
	t1.ID as ID,
	t1.Field1 as Field1
FROM
	test_temp t1
ORDER BY
	t1.ID
LIMIT 2 OFFSET $skip 

-- YDB Ydb

DELETE FROM test_temp

-- YDB Ydb

INSERT INTO test_temp
(
	Field1
)
VALUES
(
	Decimal('1', 22, 9)
)

-- YDB Ydb

INSERT INTO test_temp
(
	Field1
)
VALUES
(
	Decimal('1', 22, 9)
)

-- YDB Ydb
DECLARE $skip Int32
SET     $skip = 1

SELECT
	t1.ID as ID,
	t1.Field1 as Field1
FROM
	test_temp t1
ORDER BY
	t1.ID
LIMIT 2 OFFSET $skip 

