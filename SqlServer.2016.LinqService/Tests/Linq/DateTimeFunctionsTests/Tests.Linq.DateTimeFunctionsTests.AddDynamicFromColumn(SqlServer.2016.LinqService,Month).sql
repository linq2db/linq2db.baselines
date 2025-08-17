BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	DateAdd(month, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

