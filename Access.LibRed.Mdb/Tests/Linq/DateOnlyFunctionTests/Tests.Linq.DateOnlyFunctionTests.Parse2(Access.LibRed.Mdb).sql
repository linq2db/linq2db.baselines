-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[d].[TransactionDate]
FROM
	[Transactions] [d]
WHERE
	DatePart('d', [d].[TransactionDate]) > 0

