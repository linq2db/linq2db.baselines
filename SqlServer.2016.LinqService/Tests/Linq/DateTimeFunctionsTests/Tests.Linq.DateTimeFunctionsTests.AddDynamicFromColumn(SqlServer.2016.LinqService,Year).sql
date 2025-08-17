BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	DateAdd(year, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

