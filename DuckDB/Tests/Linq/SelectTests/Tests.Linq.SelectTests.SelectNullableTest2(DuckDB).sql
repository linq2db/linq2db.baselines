-- DuckDB
DECLARE $ID INTEGER -- Int32
SET     $ID = 1000
DECLARE $MoneyValue Decimal(1, 0)
SET     $MoneyValue = 0
DECLARE $DateTimeValue TIMESTAMP -- DateTime2
SET     $DateTimeValue = NULL
DECLARE $DateTimeValue2 TIMESTAMP -- DateTime2
SET     $DateTimeValue2 = NULL
DECLARE $BoolValue BOOLEAN -- Boolean
SET     $BoolValue = False
DECLARE $GuidValue UUID -- Guid
SET     $GuidValue = NULL
DECLARE $SmallIntValue SMALLINT -- Int16
SET     $SmallIntValue = NULL
DECLARE $IntValue INTEGER -- Int32
SET     $IntValue = NULL
DECLARE $BigIntValue BIGINT -- Int64
SET     $BigIntValue = NULL
DECLARE $StringValue NVarChar -- String
SET     $StringValue = NULL

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	DateTimeValue,
	DateTimeValue2,
	BoolValue,
	GuidValue,
	SmallIntValue,
	IntValue,
	BigIntValue,
	StringValue
)
VALUES
(
	$ID,
	$MoneyValue,
	$DateTimeValue,
	$DateTimeValue2,
	$BoolValue,
	$GuidValue,
	$SmallIntValue,
	$IntValue,
	$BigIntValue,
	$StringValue
)

-- DuckDB
SELECT
	t1.ID,
	t1.MoneyValue,
	t1.DateTimeValue,
	t1.BoolValue,
	t1.GuidValue,
	t1.BinaryValue,
	t1.SmallIntValue,
	t1.StringValue
FROM
	LinqDataTypes t1
WHERE
	t1.ID = 1000
LIMIT 1

-- DuckDB
DELETE FROM
	LinqDataTypes t1
WHERE
	t1.ID = 1000

