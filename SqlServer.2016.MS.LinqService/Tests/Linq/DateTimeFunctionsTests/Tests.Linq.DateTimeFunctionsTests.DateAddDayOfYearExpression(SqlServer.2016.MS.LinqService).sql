BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = 3

SELECT
	CAST(DateAdd(dayofyear, @Value, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

