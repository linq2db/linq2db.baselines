BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @Value Int -- Int32
SET     @Value = 1

SELECT
	CAST(DateAdd(weekday, @Value, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

