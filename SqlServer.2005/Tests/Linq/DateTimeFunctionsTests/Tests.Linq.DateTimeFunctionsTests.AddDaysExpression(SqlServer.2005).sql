-- SqlServer.2005
DECLARE @Date Int -- Int32
SET     @Date = 5

SELECT
	DateAdd(dd, DateDiff(dd, 0, DateAdd(day, @Date, [t].[DateTimeValue])), 0)
FROM
	[LinqDataTypes] [t]

