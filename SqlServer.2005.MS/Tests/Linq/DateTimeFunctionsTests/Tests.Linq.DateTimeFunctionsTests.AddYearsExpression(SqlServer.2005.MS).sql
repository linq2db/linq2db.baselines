-- SqlServer.2005.MS SqlServer.2005
DECLARE @Date Int -- Int32
SET     @Date = 1

SELECT
	DateAdd(dd, DateDiff(dd, 0, DateAdd(year, @Date, [t].[DateTimeValue])), 0)
FROM
	[LinqDataTypes] [t]

