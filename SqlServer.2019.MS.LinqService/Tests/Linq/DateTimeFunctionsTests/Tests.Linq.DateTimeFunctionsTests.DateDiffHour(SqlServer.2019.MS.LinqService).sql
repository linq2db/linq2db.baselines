BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)

SELECT
	DateDiff_Big(hour, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

