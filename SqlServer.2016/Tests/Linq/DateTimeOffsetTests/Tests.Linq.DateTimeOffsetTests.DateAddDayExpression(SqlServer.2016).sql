BeforeExecute
-- SqlServer.2016
DECLARE @Value Int -- Int32
SET     @Value = 5

SELECT
	CAST(DateAdd(day, @Value, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

