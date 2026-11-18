-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	DateAdd('ww', -1, [t].[TransactionDate])
FROM
	[Transactions] [t]

