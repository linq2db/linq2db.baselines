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
	12l
)

-- YDB Ydb
DECLARE $Ids0_1 Int64
SET     $Ids0_1 = 12l

SELECT
	COUNT(*) as Count_1
FROM
	LinqDataTypes r
WHERE
	r.ID = 101 AND r.BigIntValue IN ($Ids0_1)

-- YDB Ydb
DECLARE $p Int32
SET     $p = 102

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < $p

