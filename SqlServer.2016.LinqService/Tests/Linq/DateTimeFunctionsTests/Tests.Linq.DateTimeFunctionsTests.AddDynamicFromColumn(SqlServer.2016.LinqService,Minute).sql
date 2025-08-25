BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	DateAdd(minute, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

