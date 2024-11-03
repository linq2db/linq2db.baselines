BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Value Int -- Int32
SET     @Value = -1

SELECT
	DateAdd(dd, DateDiff(dd, 0, DateAdd(quarter, @Value, [t].[DateTimeValue])), 0)
FROM
	[LinqDataTypes] [t]

