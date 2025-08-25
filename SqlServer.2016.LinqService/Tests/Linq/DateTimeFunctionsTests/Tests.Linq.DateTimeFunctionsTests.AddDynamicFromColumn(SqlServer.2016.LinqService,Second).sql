BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	DateAdd(second, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

