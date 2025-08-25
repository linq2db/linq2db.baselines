BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = 11

SELECT
	DateAdd(dd, DateDiff(dd, 0, DateAdd(year, @Value, [t].[DateTimeValue])), 0)
FROM
	[LinqDataTypes] [t]

