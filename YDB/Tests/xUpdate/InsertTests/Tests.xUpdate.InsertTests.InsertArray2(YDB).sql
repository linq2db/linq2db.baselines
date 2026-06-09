-- YDB Ydb

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID > 1000

-- YDB Ydb
DECLARE $arr Bytes -- Binary
SET     $arr = NULL

INSERT INTO LinqDataTypes
(
	ID,
	BoolValue,
	BinaryValue
)
VALUES
(
	1001,
	true,
	$arr
)

-- YDB Ydb

SELECT
	t.ID as ID,
	t.MoneyValue as MoneyValue,
	t.DateTimeValue as DateTimeValue,
	t.BoolValue as BoolValue,
	t.GuidValue as GuidValue,
	t.BinaryValue as BinaryValue,
	t.SmallIntValue as SmallIntValue
FROM
	LinqDataTypes t
WHERE
	t.ID = 1001
LIMIT 2

-- YDB Ydb

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID > 1000

