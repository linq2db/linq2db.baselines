BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

SELECT
	DateDiff_Big(day, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

