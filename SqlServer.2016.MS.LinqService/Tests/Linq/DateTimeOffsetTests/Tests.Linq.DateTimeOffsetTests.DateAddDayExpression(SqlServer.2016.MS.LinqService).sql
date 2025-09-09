BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = 5

SELECT
	CAST(DateAdd(day, @Value, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

