BeforeExecute
-- SqlServer.2005

SELECT
	DateDiff(millisecond, [t].[DateTimeValue], DateAdd(hour, 2023456789 / 3600000, DateAdd(millisecond, Convert(Int, 2023456789) % 3600000, [t].[DateTimeValue])))
FROM
	[LinqDataTypes] [t]

