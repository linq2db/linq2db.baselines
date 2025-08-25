BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = 5

SELECT
	CAST(DateAdd(day, @Value, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

