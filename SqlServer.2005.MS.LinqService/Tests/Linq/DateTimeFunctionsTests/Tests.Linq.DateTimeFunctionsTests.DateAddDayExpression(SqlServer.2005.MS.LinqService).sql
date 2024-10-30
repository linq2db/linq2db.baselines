BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Value Int -- Int32
SET     @Value = 5

SELECT
	DateAdd(dd, DateDiff(dd, 0, DateAdd(day, @Value, [t].[DateTimeValue])), 0)
FROM
	[LinqDataTypes] [t]

