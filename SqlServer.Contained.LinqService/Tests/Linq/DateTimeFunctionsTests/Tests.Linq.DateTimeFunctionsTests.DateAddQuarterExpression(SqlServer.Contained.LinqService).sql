BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = -1

SELECT
	CAST(DateAdd(quarter, @Value, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

