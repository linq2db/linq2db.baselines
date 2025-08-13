BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Value Int -- Int32
SET     @Value = 5

SELECT
	CAST(DateAdd(day, @Value, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

