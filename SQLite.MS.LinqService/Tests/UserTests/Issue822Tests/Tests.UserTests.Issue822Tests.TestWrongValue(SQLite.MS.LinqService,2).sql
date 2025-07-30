BeforeExecute
-- SQLite.MS SQLite
DECLARE @id  -- Int32
SET     @id = 3

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[DateTimeValue2],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[SmallIntValue],
	[t1].[IntValue],
	[t1].[BigIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] IN (
		SELECT
			[t2].[ID]
		FROM
			[LinqDataTypes] [t2]
		WHERE
			[t2].[ID] = @id
	)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @id  -- Int32
SET     @id = 4

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[DateTimeValue2],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[SmallIntValue],
	[t1].[IntValue],
	[t1].[BigIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] IN (
		SELECT
			[t2].[ID]
		FROM
			[LinqDataTypes] [t2]
		WHERE
			[t2].[ID] = @id
	)

