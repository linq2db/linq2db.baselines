-- SqlServer.2008
DECLARE @Minute Int -- Int32
SET     @Minute = -8

SELECT
	DatePart(minute, DateAdd(minute, @Minute, [t].[TransactionDate]))
FROM
	[Transactions] [t]

