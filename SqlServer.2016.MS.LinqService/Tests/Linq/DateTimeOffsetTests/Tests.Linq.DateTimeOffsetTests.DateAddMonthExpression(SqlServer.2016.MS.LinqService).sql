BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Value Int -- Int32
SET     @Value = 2

SELECT
	CAST(DateAdd(month, @Value, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

