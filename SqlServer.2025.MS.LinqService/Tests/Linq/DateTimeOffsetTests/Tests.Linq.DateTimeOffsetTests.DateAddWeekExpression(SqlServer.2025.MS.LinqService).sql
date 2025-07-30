BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @Value Int -- Int32
SET     @Value = -1

SELECT
	CAST(DateAdd(week, @Value, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

