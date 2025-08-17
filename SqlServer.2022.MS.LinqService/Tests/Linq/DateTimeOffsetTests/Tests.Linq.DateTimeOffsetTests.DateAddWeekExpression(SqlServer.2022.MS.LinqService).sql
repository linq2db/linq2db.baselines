BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = -1

SELECT
	CAST(DateAdd(week, @Value, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

