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
	ID
)
VALUES
(
	101
)

-- YDB Ydb

SELECT
	r.BigIntValue as TestField
FROM
	LinqDataTypes r
WHERE
	r.ID = 101 AND r.BigIntValue IS NULL
LIMIT 1

-- YDB Ydb
DECLARE $p Int32
SET     $p = 102

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < $p

