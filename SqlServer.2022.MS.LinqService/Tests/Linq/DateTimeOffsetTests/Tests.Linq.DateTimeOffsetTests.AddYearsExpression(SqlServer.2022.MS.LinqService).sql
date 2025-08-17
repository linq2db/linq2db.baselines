BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)
DECLARE @Date Int -- Int32
SET     @Date = 1

SELECT
	CAST(DateAdd(year, @Date, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

