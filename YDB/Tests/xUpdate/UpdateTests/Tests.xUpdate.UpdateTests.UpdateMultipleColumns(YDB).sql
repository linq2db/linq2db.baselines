-- YDB Ydb
DECLARE $ID Int32
SET     $ID = 1001
DECLARE $MoneyValue Decimal(6, 2)
SET     $MoneyValue = Decimal('1000', 22, 9)
DECLARE $SmallIntValue Int16
SET     $SmallIntValue = 100s

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	SmallIntValue
)
VALUES
(
	$ID,
	$MoneyValue,
	$SmallIntValue
)

-- YDB Ydb
DECLARE $ID Int32
SET     $ID = 1001

UPDATE
	LinqDataTypes
SET
	MoneyValue = Decimal('2000', 6, 2),
	SmallIntValue = 200s
WHERE
	LinqDataTypes.ID = $ID

-- YDB Ydb
DECLARE $ID Int32
SET     $ID = 1001

SELECT
	t.ID as ID,
	t.MoneyValue as MoneyValue,
	t.DateTimeValue as DateTimeValue,
	t.BoolValue as BoolValue,
	t.GuidValue as GuidValue,
	t.BinaryValue as BinaryValue,
	t.SmallIntValue as SmallIntValue,
	t.StringValue as StringValue
FROM
	LinqDataTypes t
WHERE
	t.ID = $ID
LIMIT 2

