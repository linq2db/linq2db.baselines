-- SqlServer.2005.MS SqlServer.2005
DECLARE @Value Int -- Int32
SET     @Value = 2

SELECT
	DateAdd(dd, DateDiff(dd, 0, DateAdd(month, @Value, [t].[DateTimeValue])), 0)
FROM
	[LinqDataTypes] [t]

