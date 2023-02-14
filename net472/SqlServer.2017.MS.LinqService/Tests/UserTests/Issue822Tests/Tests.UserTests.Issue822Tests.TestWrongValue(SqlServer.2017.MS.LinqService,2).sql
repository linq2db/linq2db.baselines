BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @id Int -- Int32
SET     @id = 3

SELECT
	[_].[ID],
	[_].[MoneyValue],
	[_].[DateTimeValue],
	[_].[DateTimeValue2],
	[_].[BoolValue],
	[_].[GuidValue],
	[_].[SmallIntValue],
	[_].[IntValue],
	[_].[BigIntValue],
	[_].[StringValue]
FROM
	[LinqDataTypes] [_]
WHERE
	[_].[ID] IN (
		SELECT
			[_1].[ID]
		FROM
			[LinqDataTypes] [_1]
		WHERE
			[_1].[ID] = @id
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @id Int -- Int32
SET     @id = 4

SELECT
	[_].[ID],
	[_].[MoneyValue],
	[_].[DateTimeValue],
	[_].[DateTimeValue2],
	[_].[BoolValue],
	[_].[GuidValue],
	[_].[SmallIntValue],
	[_].[IntValue],
	[_].[BigIntValue],
	[_].[StringValue]
FROM
	[LinqDataTypes] [_]
WHERE
	[_].[ID] IN (
		SELECT
			[_1].[ID]
		FROM
			[LinqDataTypes] [_1]
		WHERE
			[_1].[ID] = @id
	)

