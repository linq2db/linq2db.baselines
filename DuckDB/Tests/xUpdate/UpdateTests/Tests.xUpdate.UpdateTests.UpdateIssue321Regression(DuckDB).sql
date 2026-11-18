-- DuckDB
DECLARE $ID INTEGER -- Int32
SET     $ID = 100500
DECLARE $MoneyValue Decimal(4, 0)
SET     $MoneyValue = 3000
DECLARE $DateTimeValue TIMESTAMP -- DateTime2
SET     $DateTimeValue = NULL
DECLARE $DateTimeValue2 TIMESTAMP -- DateTime2
SET     $DateTimeValue2 = NULL
DECLARE $BoolValue BOOLEAN -- Boolean
SET     $BoolValue = NULL
DECLARE $GuidValue UUID -- Guid
SET     $GuidValue = NULL
DECLARE $SmallIntValue SMALLINT -- Int16
SET     $SmallIntValue = NULL
DECLARE $IntValue INTEGER -- Int32
SET     $IntValue = 60
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
DECLARE $value2 Decimal(5, 0)
SET     $value2 = 13621
DECLARE $id INTEGER -- Int32
SET     $id = 100500

UPDATE
	LinqDataTypes
SET
	SmallIntValue = CAST(Floor(LinqDataTypes.MoneyValue / (CAST($value2 AS DECIMAL) / LinqDataTypes.IntValue)) AS SMALLINT)
WHERE
	LinqDataTypes.ID = $id

-- DuckDB
DECLARE $id INTEGER -- Int32
SET     $id = 100500

SELECT
	t1.SmallIntValue
FROM
	LinqDataTypes t1
WHERE
	t1.ID = $id
LIMIT 1

