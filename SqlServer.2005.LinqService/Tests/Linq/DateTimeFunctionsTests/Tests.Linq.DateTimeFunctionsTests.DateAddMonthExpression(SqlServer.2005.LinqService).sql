BeforeExecute
-- SqlServer.2005 (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = 2

SELECT
	DateAdd(dd, DateDiff(dd, 0, DateAdd(month, @Value, [t].[DateTimeValue])), 0)
FROM
	[LinqDataTypes] [t]

