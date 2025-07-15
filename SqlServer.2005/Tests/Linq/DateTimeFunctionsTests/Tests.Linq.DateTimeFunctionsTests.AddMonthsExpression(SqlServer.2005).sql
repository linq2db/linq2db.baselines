BeforeExecute
-- SqlServer.2005
DECLARE @Date Int -- Int32
SET     @Date = -2

SELECT
	DateAdd(dd, DateDiff(dd, 0, DateAdd(month, @Date, [t].[DateTimeValue])), 0)
FROM
	[LinqDataTypes] [t]

