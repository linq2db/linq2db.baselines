-- SQLite.MS SQLite
SELECT
	[r].[ID],
	[r].[MoneyValue],
	[r].[DateTimeValue],
	[r].[DateTimeValue2],
	[r].[BoolValue],
	[r].[GuidValue],
	[r].[SmallIntValue],
	[r].[IntValue],
	[r].[BigIntValue],
	[r].[StringValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 1
LIMIT 1

-- SQLite.MS SQLite
SELECT
	[r].[ID],
	[r].[MoneyValue],
	[r].[DateTimeValue],
	[r].[DateTimeValue2],
	[r].[BoolValue],
	[r].[GuidValue],
	[r].[SmallIntValue],
	[r].[IntValue],
	[r].[BigIntValue],
	[r].[StringValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 1
LIMIT 1

-- SQLite.MS SQLite
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 1.11
DECLARE @DateTimeValue Text(23) -- DateTime
SET     @DateTimeValue = '2001-01-11 01:11:21.100'
DECLARE @DateTimeValue2 Text -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Integer -- Boolean
SET     @BoolValue = 0
DECLARE @GuidValue Blob(16) -- Guid
SET     @GuidValue = X'659112EFFE6FF94DBB6BBB16E413C883'
DECLARE @SmallIntValue Integer -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Integer -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Integer -- Int64
SET     @BigIntValue = 1
DECLARE @StringValue NVarChar -- String
SET     @StringValue = NULL
DECLARE @ID Integer -- Int32
SET     @ID = 1

UPDATE
	[LinqDataTypes]
SET
	[MoneyValue] = @MoneyValue,
	[DateTimeValue] = @DateTimeValue,
	[DateTimeValue2] = @DateTimeValue2,
	[BoolValue] = @BoolValue,
	[GuidValue] = @GuidValue,
	[SmallIntValue] = @SmallIntValue,
	[IntValue] = @IntValue,
	[BigIntValue] = @BigIntValue,
	[StringValue] = @StringValue
WHERE
	[LinqDataTypes].[ID] = @ID

-- SQLite.MS SQLite
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT
	[r].[ID],
	[r].[MoneyValue],
	[r].[DateTimeValue],
	[r].[DateTimeValue2],
	[r].[BoolValue],
	[r].[GuidValue],
	[r].[SmallIntValue],
	[r].[IntValue],
	[r].[BigIntValue],
	[r].[StringValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = @ID
LIMIT 1

-- SQLite.MS SQLite
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 1.11
DECLARE @DateTimeValue Text(23) -- DateTime
SET     @DateTimeValue = '2001-01-11 01:11:21.100'
DECLARE @DateTimeValue2 Text -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Integer -- Boolean
SET     @BoolValue = 1
DECLARE @GuidValue Blob(16) -- Guid
SET     @GuidValue = X'659112EFFE6FF94DBB6BBB16E413C883'
DECLARE @SmallIntValue Integer -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Integer -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Integer -- Int64
SET     @BigIntValue = 1
DECLARE @StringValue NVarChar -- String
SET     @StringValue = NULL
DECLARE @ID Integer -- Int32
SET     @ID = 1

UPDATE
	[LinqDataTypes]
SET
	[MoneyValue] = @MoneyValue,
	[DateTimeValue] = @DateTimeValue,
	[DateTimeValue2] = @DateTimeValue2,
	[BoolValue] = @BoolValue,
	[GuidValue] = @GuidValue,
	[SmallIntValue] = @SmallIntValue,
	[IntValue] = @IntValue,
	[BigIntValue] = @BigIntValue,
	[StringValue] = @StringValue
WHERE
	[LinqDataTypes].[ID] = @ID

-- SQLite.MS SQLite
SELECT
	[r].[ID],
	[r].[MoneyValue],
	[r].[DateTimeValue],
	[r].[DateTimeValue2],
	[r].[BoolValue],
	[r].[GuidValue],
	[r].[SmallIntValue],
	[r].[IntValue],
	[r].[BigIntValue],
	[r].[StringValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 1
LIMIT 1

