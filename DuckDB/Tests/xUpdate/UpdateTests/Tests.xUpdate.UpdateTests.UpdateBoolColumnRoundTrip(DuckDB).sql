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
DECLARE $DateTimeValue TIMESTAMP -- DateTime2
SET     $DateTimeValue = '2001-01-11 01:11:21.100000'::TIMESTAMP
DECLARE $DateTimeValue2 TIMESTAMP -- DateTime2
SET     $DateTimeValue2 = NULL
DECLARE $BoolValue BOOLEAN -- Boolean
SET     $BoolValue = False
DECLARE $GuidValue UUID -- Guid
SET     $GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'::UUID
DECLARE $SmallIntValue SMALLINT -- Int16
SET     $SmallIntValue = 1
DECLARE $IntValue INTEGER -- Int32
SET     $IntValue = NULL
DECLARE $BigIntValue BIGINT -- Int64
SET     $BigIntValue = 1
DECLARE $StringValue NVarChar -- String
SET     $StringValue = NULL
DECLARE $ID INTEGER -- Int32
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
DECLARE $ID INTEGER -- Int32
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
DECLARE $DateTimeValue TIMESTAMP -- DateTime2
SET     $DateTimeValue = '2001-01-11 01:11:21.100000'::TIMESTAMP
DECLARE $DateTimeValue2 TIMESTAMP -- DateTime2
SET     $DateTimeValue2 = NULL
DECLARE $BoolValue BOOLEAN -- Boolean
SET     $BoolValue = True
DECLARE $GuidValue UUID -- Guid
SET     $GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'::UUID
DECLARE $SmallIntValue SMALLINT -- Int16
SET     $SmallIntValue = 1
DECLARE $IntValue INTEGER -- Int32
SET     $IntValue = NULL
DECLARE $BigIntValue BIGINT -- Int64
SET     $BigIntValue = 1
DECLARE $StringValue NVarChar -- String
SET     $StringValue = NULL
DECLARE $ID INTEGER -- Int32
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

