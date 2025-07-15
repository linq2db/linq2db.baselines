BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Millisecond Int -- Int32
SET     @Millisecond = 226

SELECT
	DatePart(millisecond, DateAdd(millisecond, @Millisecond, [t].[TransactionDate]))
FROM
	[Transactions] [t]

