BeforeExecute
-- SqlServer.2008

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
	(CASE
		WHEN [_].[BoolValue] IN (1)
			THEN 1
		ELSE 0
	END = 0 OR CASE
		WHEN [_].[BoolValue] IN (1)
			THEN 1
		ELSE 0
	END IS NULL)

