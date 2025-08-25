BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)
DECLARE @Millisecond Int -- Int32
SET     @Millisecond = 226

SELECT
	DatePart(millisecond, DateAdd(millisecond, @Millisecond, [t].[TransactionDate]))
FROM
	[Transactions] [t]

