BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = 1

SELECT
	CAST(DateAdd(weekday, @Value, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

