-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	DateAdd('ww', -1, [t].[TransactionDate])
FROM
	[Transactions] [t]

