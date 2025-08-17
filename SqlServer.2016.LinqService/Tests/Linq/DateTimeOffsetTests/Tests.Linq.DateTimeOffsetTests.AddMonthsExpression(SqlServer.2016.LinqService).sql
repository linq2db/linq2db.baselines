BeforeExecute
-- SqlServer.2016 (asynchronously)
DECLARE @Date Int -- Int32
SET     @Date = -2

SELECT
	CAST(DateAdd(month, @Date, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

