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
	IntValue
)
VALUES
(
	101,
	3
)

-- YDB Ydb

UPDATE
	LinqDataTypes
SET
	IntValue = 4
WHERE
	LinqDataTypes.ID = 101 AND LinqDataTypes.IntValue = 3

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	LinqDataTypes r
WHERE
	r.ID = 101 AND r.IntValue = 4

-- YDB Ydb
DECLARE $p Int32
SET     $p = 102

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < $p

