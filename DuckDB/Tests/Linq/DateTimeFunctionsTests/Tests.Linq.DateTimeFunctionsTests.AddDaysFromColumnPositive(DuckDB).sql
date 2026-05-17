-- DuckDB
DECLARE $ID  -- Int32
SET     $ID = 5000
DECLARE $MoneyValue Decimal(1, 0)
SET     $MoneyValue = 0
DECLARE $DateTimeValue  -- DateTime2
SET     $DateTimeValue = '2018-01-03 00:00:00.000000'::TIMESTAMP
DECLARE $BoolValue  -- Boolean
SET     $BoolValue = False
DECLARE $GuidValue  -- Guid
SET     $GuidValue = '00000000-0000-0000-0000-000000000000'::UUID
DECLARE $BinaryValue Binary
SET     $BinaryValue = NULL
DECLARE $SmallIntValue  -- Int16
SET     $SmallIntValue = 2
DECLARE $StringValue NVarChar -- String
SET     $StringValue = NULL

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	DateTimeValue,
	BoolValue,
	GuidValue,
	BinaryValue,
	SmallIntValue,
	StringValue
)
VALUES
(
	$ID,
	$MoneyValue,
	$DateTimeValue,
	$BoolValue,
	$GuidValue,
	$BinaryValue,
	$SmallIntValue,
	$StringValue
)

-- DuckDB

SELECT
	COUNT(*)
FROM
	LinqDataTypes t
WHERE
	t.ID = 5000 AND t.DateTimeValue + t.SmallIntValue * Interval '1 Day' > make_timestamp(2018, 1, 2, 0, 0, 0)

-- DuckDB

DELETE FROM
	LinqDataTypes t
WHERE
	t.ID = 5000

