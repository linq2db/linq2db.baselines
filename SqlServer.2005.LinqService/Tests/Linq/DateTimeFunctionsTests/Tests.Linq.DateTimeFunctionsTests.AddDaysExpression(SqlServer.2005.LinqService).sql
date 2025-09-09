BeforeExecute
-- SqlServer.2005 (asynchronously)
DECLARE @Date Int -- Int32
SET     @Date = 5

SELECT
	DateAdd(dd, DateDiff(dd, 0, DateAdd(day, @Date, [t].[DateTimeValue])), 0)
FROM
	[LinqDataTypes] [t]

