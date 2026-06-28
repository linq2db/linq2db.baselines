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
	BigIntValue,
	IntValue
)
VALUES
(
	101,
	4l,
	10
)

-- YDB Ydb

SELECT
	t1.BigIntValue IS NOT NULL AND t1.IntValue IS NOT NULL as c1,
	t1.BigIntValue as BigIntValue,
	t1.IntValue as IntValue
FROM
	LinqDataTypes t1
WHERE
	t1.ID = 101

-- YDB Ydb
DECLARE $p Int32
SET     $p = 102

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < $p

