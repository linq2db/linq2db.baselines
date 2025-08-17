BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SELECT
	DateDiff(millisecond, [t].[DateTimeValue], DateAdd(millisecond, 2023456789, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

