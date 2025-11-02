-- SqlServer.2005.MS SqlServer.2005

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Amount],
	[d].[Currency]
FROM
	(
		SELECT DISTINCT
			[x].[Id]
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
	) [m_1]
		INNER JOIN [LineEntity] [d] ON [m_1].[Id] = [d].[TransactionId]

-- SqlServer.2005.MS SqlServer.2005

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

