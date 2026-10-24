-- SqlServer.2012.MS SqlServer.2012
DECLARE @Second Int -- Int32
SET     @Second = -35

SELECT
	DatePart(second, DateAdd(second, @Second, [t].[TransactionDate]))
FROM
	[Transactions] [t]

