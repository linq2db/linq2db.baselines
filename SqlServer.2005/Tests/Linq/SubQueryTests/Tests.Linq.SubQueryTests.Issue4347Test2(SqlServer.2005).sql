BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2005

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Amount],
	[d].[Currency]
FROM
	[TransactionEntity] [m_1]
		INNER JOIN [LineEntity] [d] ON [m_1].[Id] = [d].[TransactionId]
WHERE
	EXISTS(
		SELECT
			[a_Lines].[Currency]
		FROM
			[LineEntity] [a_Lines]
		WHERE
			[m_1].[Id] = [a_Lines].[TransactionId]
		INTERSECT
		SELECT
			[t1].[item]
		FROM
			(
				SELECT N'A' AS [item]
				UNION ALL
				SELECT N'B') [t1]
	)

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2005

SELECT
	[x].[Id],
	[x].[ValidOn]
FROM
	[TransactionEntity] [x]
WHERE
	EXISTS(
		SELECT
			[a_Lines].[Currency]
		FROM
			[LineEntity] [a_Lines]
		WHERE
			[x].[Id] = [a_Lines].[TransactionId]
		INTERSECT
		SELECT
			[t1].[item]
		FROM
			(
				SELECT N'A' AS [item]
				UNION ALL
				SELECT N'B') [t1]
	)

