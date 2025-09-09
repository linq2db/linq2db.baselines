BeforeExecute
-- SqlServer.2005 (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = 1

SELECT
	DateAdd(dd, DateDiff(dd, 0, DateAdd(weekday, @Value, [t].[DateTimeValue])), 0)
FROM
	[LinqDataTypes] [t]

