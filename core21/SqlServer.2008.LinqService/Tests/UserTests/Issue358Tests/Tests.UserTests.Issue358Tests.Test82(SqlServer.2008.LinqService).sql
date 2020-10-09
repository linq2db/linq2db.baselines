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
		WHEN [_].[BigIntValue] IN (2)
			THEN 1
		ELSE 0
	END = 1 AND CASE
		WHEN [_].[BigIntValue] IN (2)
			THEN 1
		ELSE 0
	END IS NOT NULL)

