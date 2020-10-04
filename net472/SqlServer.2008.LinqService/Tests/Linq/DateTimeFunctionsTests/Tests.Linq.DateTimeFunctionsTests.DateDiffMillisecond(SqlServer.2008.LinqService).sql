BeforeExecute
-- SqlServer.2008

SELECT
	DateDiff(millisecond, [t].[DateTimeValue], DateAdd(second, 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

