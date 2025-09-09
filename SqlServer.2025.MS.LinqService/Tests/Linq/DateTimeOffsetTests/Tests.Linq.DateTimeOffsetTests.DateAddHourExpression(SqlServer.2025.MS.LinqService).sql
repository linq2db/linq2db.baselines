BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = 1

SELECT
	DatePart(hour, DateAdd(hour, @Value, [t].[TransactionDate]))
FROM
	[Transactions] [t]

