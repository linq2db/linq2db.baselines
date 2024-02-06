BeforeExecute
-- SqlServer.2005

SELECT
	DateDiff(second, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

