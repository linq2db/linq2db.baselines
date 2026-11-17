-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	DateAdd('q', -1, [t].[TransactionDate])
FROM
	[Transactions] [t]

