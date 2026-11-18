-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	'2010-01-' + Format([t].[TransactionId], String('0', 2))
FROM
	[Transactions] [t]
WHERE
	DatePart('d', '2010-01-' + Format([t].[TransactionId], String('0', 2))) > 0

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[TransactionId],
	[t1].[TransactionDate]
FROM
	[Transactions] [t1]

