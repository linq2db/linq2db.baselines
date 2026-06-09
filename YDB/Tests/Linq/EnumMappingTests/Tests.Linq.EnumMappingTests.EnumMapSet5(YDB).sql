-- YDB Ydb
DECLARE $p Int32
SET     $p = 102

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < $p

-- YDB Ydb

INSERT INTO LinqDataTypes
(
	ID,
	BigIntValue
)
VALUES
(
	101,
	11l
)

-- YDB Ydb
DECLARE $TestField Int64
SET     $TestField = 12l

UPDATE
	LinqDataTypes
SET
	BigIntValue = $TestField
WHERE
	LinqDataTypes.ID = 101 AND LinqDataTypes.BigIntValue = 11l

-- YDB Ydb

SELECT
	r.BigIntValue as TestField
FROM
	LinqDataTypes r
WHERE
	r.ID = 101 AND r.BigIntValue = 12l
LIMIT 1

-- YDB Ydb
DECLARE $p Int32
SET     $p = 102

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < $p

