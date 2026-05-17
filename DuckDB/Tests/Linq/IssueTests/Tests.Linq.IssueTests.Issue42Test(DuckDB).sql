-- DuckDB

SELECT
	r.ID,
	r.MoneyValue,
	r.DateTimeValue,
	r.DateTimeValue2,
	r.BoolValue,
	r.GuidValue,
	r.SmallIntValue,
	r.IntValue,
	r.BigIntValue,
	r.StringValue
FROM
	LinqDataTypes r
WHERE
	r.ID = 1
LIMIT 1

-- DuckDB

SELECT
	r.ID,
	r.MoneyValue,
	r.DateTimeValue,
	r.DateTimeValue2,
	r.BoolValue,
	r.GuidValue,
	r.SmallIntValue,
	r.IntValue,
	r.BigIntValue,
	r.StringValue
FROM
	LinqDataTypes r
WHERE
	r.ID = 1
LIMIT 1

-- DuckDB
DECLARE $MoneyValue Decimal(5, 4)
SET     $MoneyValue = 1.1100
DECLARE $DateTimeValue  -- DateTime2
SET     $DateTimeValue = '2001-01-11 01:11:21.100000'::TIMESTAMP
DECLARE $DateTimeValue2  -- DateTime2
SET     $DateTimeValue2 = NULL
DECLARE $BoolValue  -- Boolean
SET     $BoolValue = False
DECLARE $GuidValue  -- Guid
SET     $GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'::UUID
DECLARE $SmallIntValue  -- Int16
SET     $SmallIntValue = 1
DECLARE $IntValue  -- Int32
SET     $IntValue = NULL
DECLARE $BigIntValue  -- Int64
SET     $BigIntValue = 1
DECLARE $StringValue NVarChar -- String
SET     $StringValue = NULL
DECLARE $ID  -- Int32
SET     $ID = 1

UPDATE
	LinqDataTypes
SET
	MoneyValue = $MoneyValue,
	DateTimeValue = $DateTimeValue,
	DateTimeValue2 = $DateTimeValue2,
	BoolValue = $BoolValue,
	GuidValue = $GuidValue,
	SmallIntValue = $SmallIntValue,
	IntValue = $IntValue,
	BigIntValue = $BigIntValue,
	StringValue = $StringValue
WHERE
	LinqDataTypes.ID = $ID

-- DuckDB
DECLARE $ID  -- Int32
SET     $ID = 1

SELECT
	r.ID,
	r.MoneyValue,
	r.DateTimeValue,
	r.DateTimeValue2,
	r.BoolValue,
	r.GuidValue,
	r.SmallIntValue,
	r.IntValue,
	r.BigIntValue,
	r.StringValue
FROM
	LinqDataTypes r
WHERE
	r.ID = $ID
LIMIT 1

-- DuckDB
DECLARE $MoneyValue Decimal(5, 4)
SET     $MoneyValue = 1.1100
DECLARE $DateTimeValue  -- DateTime2
SET     $DateTimeValue = '2001-01-11 01:11:21.100000'::TIMESTAMP
DECLARE $DateTimeValue2  -- DateTime2
SET     $DateTimeValue2 = NULL
DECLARE $BoolValue  -- Boolean
SET     $BoolValue = True
DECLARE $GuidValue  -- Guid
SET     $GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'::UUID
DECLARE $SmallIntValue  -- Int16
SET     $SmallIntValue = 1
DECLARE $IntValue  -- Int32
SET     $IntValue = NULL
DECLARE $BigIntValue  -- Int64
SET     $BigIntValue = 1
DECLARE $StringValue NVarChar -- String
SET     $StringValue = NULL
DECLARE $ID  -- Int32
SET     $ID = 1

UPDATE
	LinqDataTypes
SET
	MoneyValue = $MoneyValue,
	DateTimeValue = $DateTimeValue,
	DateTimeValue2 = $DateTimeValue2,
	BoolValue = $BoolValue,
	GuidValue = $GuidValue,
	SmallIntValue = $SmallIntValue,
	IntValue = $IntValue,
	BigIntValue = $BigIntValue,
	StringValue = $StringValue
WHERE
	LinqDataTypes.ID = $ID

-- DuckDB

SELECT
	r.ID,
	r.MoneyValue,
	r.DateTimeValue,
	r.DateTimeValue2,
	r.BoolValue,
	r.GuidValue,
	r.SmallIntValue,
	r.IntValue,
	r.BigIntValue,
	r.StringValue
FROM
	LinqDataTypes r
WHERE
	r.ID = 1
LIMIT 1

