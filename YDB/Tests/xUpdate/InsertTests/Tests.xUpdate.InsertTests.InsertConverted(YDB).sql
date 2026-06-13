-- YDB Ydb

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 1000

-- YDB Ydb
DECLARE $tt Int64
SET     $tt = 600000000l

INSERT INTO LinqDataTypes
(
	ID,
	BigIntValue
)
VALUES
(
	1001,
	$tt
)

-- YDB Ydb

SELECT
	t.ID as ID,
	t.BigIntValue as BigIntValue
FROM
	LinqDataTypes t
WHERE
	t.ID = 1001
LIMIT 1

-- YDB Ydb

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 1000

