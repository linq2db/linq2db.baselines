BeforeExecute
-- SqlServer.2016 (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = 11

SELECT
	CAST(DateAdd(year, @Value, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

