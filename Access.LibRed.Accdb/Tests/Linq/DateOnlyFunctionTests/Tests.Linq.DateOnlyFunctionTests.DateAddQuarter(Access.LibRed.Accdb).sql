-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	DateAdd('q', -1, [t].[TransactionDate])
FROM
	[Transactions] [t]

