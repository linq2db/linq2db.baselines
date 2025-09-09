BeforeExecute
-- SqlServer.2019 (asynchronously)
DECLARE @Minute Int -- Int32
SET     @Minute = -8

SELECT
	DatePart(minute, DateAdd(minute, @Minute, [t].[TransactionDate]))
FROM
	[Transactions] [t]

