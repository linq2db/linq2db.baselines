-- SqlServer.2012.MS SqlServer.2012
DECLARE @Minute Int -- Int32
SET     @Minute = -8

SELECT
	DatePart(minute, DateAdd(minute, @Minute, [t].[TransactionDate]))
FROM
	[Transactions] [t]

