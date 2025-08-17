BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = 2

SELECT
	CAST(DateAdd(month, @Value, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

