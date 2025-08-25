BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)
DECLARE @Millisecond Int -- Int32
SET     @Millisecond = 226

SELECT
	DatePart(millisecond, DateAdd(millisecond, @Millisecond, [t].[TransactionDate]))
FROM
	[Transactions] [t]

