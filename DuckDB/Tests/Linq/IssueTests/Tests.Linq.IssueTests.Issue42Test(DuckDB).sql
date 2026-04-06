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
DECLARE $MoneyValue NVarChar(6) -- String
SET     $MoneyValue = '1.1100'
DECLARE $DateTimeValue NVarChar(26) -- String
SET     $DateTimeValue = '2001-01-11 01:11:21.100000'
DECLARE $DateTimeValue2  -- Object
SET     $DateTimeValue2 = NULL
DECLARE $BoolValue  -- Boolean
SET     $BoolValue = False
DECLARE $GuidValue  -- Guid
SET     $GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'::UUID
DECLARE $SmallIntValue  -- Int16
SET     $SmallIntValue = 1
DECLARE $IntValue  -- Object
SET     $IntValue = NULL
DECLARE $BigIntValue  -- Int64
SET     $BigIntValue = 1
DECLARE $StringValue  -- Object
SET     $StringValue = NULL
DECLARE $ID  -- Int32
SET     $ID = 1

UPDATE
	LinqDataTypes
SET
	MoneyValue = CAST($MoneyValue AS DECIMAL(38, 18)),
	DateTimeValue = CAST($DateTimeValue AS TIMESTAMP),
	DateTimeValue2 = CAST($DateTimeValue2 AS TIMESTAMP),
	BoolValue = CAST($BoolValue AS BOOLEAN),
	GuidValue = CAST($GuidValue AS UUID),
	SmallIntValue = CAST($SmallIntValue AS SMALLINT),
	IntValue = CAST($IntValue AS INTEGER),
	BigIntValue = CAST($BigIntValue AS BIGINT),
	StringValue = CAST($StringValue AS VARCHAR)
WHERE
	LinqDataTypes.ID = CAST($ID AS INTEGER)

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
	r.ID = CAST($ID AS INTEGER)
LIMIT 1

-- DuckDB
DECLARE $MoneyValue NVarChar(6) -- String
SET     $MoneyValue = '1.1100'
DECLARE $DateTimeValue NVarChar(26) -- String
SET     $DateTimeValue = '2001-01-11 01:11:21.100000'
DECLARE $DateTimeValue2  -- Object
SET     $DateTimeValue2 = NULL
DECLARE $BoolValue  -- Boolean
SET     $BoolValue = True
DECLARE $GuidValue  -- Guid
SET     $GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'::UUID
DECLARE $SmallIntValue  -- Int16
SET     $SmallIntValue = 1
DECLARE $IntValue  -- Object
SET     $IntValue = NULL
DECLARE $BigIntValue  -- Int64
SET     $BigIntValue = 1
DECLARE $StringValue  -- Object
SET     $StringValue = NULL
DECLARE $ID  -- Int32
SET     $ID = 1

UPDATE
	LinqDataTypes
SET
	MoneyValue = CAST($MoneyValue AS DECIMAL(38, 18)),
	DateTimeValue = CAST($DateTimeValue AS TIMESTAMP),
	DateTimeValue2 = CAST($DateTimeValue2 AS TIMESTAMP),
	BoolValue = CAST($BoolValue AS BOOLEAN),
	GuidValue = CAST($GuidValue AS UUID),
	SmallIntValue = CAST($SmallIntValue AS SMALLINT),
	IntValue = CAST($IntValue AS INTEGER),
	BigIntValue = CAST($BigIntValue AS BIGINT),
	StringValue = CAST($StringValue AS VARCHAR)
WHERE
	LinqDataTypes.ID = CAST($ID AS INTEGER)

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

