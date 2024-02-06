BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	DateDiff_Big(millisecond, [t].[DateTimeValue], DateAdd(hour, 2023456789 / 3600000, DateAdd(millisecond, Convert(Int, 2023456789) % 3600000, [t].[DateTimeValue])))
FROM
	[LinqDataTypes] [t]

