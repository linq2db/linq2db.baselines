BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT
	DateDiff_Big(second, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

