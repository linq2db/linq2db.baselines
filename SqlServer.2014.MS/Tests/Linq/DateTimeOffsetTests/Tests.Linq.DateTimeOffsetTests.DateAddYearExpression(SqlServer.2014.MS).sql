BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Value Int -- Int32
SET     @Value = 11

SELECT
	CAST(DateAdd(year, @Value, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

