BeforeExecute
-- SqlServer.2012
DECLARE @Value Int -- Int32
SET     @Value = 1

SELECT
	DatePart(hour, DateAdd(hour, @Value, [t].[TransactionDate]))
FROM
	[Transactions] [t]

