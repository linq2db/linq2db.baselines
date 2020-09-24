BeforeExecute
-- SqlServer.2012

SELECT
	DateDiff(millisecond, [t].[DateTimeValue], DateAdd(second, 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

