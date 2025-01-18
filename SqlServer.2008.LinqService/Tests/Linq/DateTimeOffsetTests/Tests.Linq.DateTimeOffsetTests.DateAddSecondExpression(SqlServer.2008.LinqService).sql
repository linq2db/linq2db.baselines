BeforeExecute
-- SqlServer.2008
DECLARE @Value Int -- Int32
SET     @Value = 41

SELECT
	DatePart(second, DateAdd(second, @Value, [t].[TransactionDate]))
FROM
	[Transactions] [t]

