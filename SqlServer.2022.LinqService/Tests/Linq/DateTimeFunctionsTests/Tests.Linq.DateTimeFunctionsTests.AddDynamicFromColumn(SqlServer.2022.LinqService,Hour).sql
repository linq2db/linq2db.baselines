BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	DateAdd(hour, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

