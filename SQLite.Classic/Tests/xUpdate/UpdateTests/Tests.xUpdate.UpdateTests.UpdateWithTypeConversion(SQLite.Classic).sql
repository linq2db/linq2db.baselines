-- SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 1001

INSERT INTO [LinqDataTypes]
(
	[ID],
	[MoneyValue],
	[SmallIntValue]
)
VALUES
(
	@ID,
	100,
	200
)

-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1001

UPDATE
	[LinqDataTypes]
SET
	[SmallIntValue] = CAST([LinqDataTypes].[MoneyValue] AS SmallInt),
	[MoneyValue] = CAST([LinqDataTypes].[SmallIntValue] AS Decimal)
WHERE
	[LinqDataTypes].[ID] = @id

-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1001

UPDATE
	[LinqDataTypes]
SET
	[SmallIntValue] = CAST([LinqDataTypes].[MoneyValue] AS SmallInt),
	[MoneyValue] = CAST([LinqDataTypes].[SmallIntValue] AS Decimal)
WHERE
	[LinqDataTypes].[ID] = @id

-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1001

SELECT
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[BinaryValue],
	[t].[SmallIntValue],
	[t].[StringValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = @id
LIMIT 2

