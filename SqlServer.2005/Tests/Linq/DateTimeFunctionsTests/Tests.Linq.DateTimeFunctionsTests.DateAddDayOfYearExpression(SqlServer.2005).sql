BeforeExecute
-- SqlServer.2005
DECLARE @Value Int -- Int32
SET     @Value = 3

SELECT
	DateAdd(dd, DateDiff(dd, 0, DateAdd(dayofyear, @Value, [t].[DateTimeValue])), 0)
FROM
	[LinqDataTypes] [t]

