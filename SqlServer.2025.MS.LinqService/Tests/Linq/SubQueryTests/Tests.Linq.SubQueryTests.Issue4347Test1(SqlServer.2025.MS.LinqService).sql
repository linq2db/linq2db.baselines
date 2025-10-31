BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)

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
			(VALUES
				(N'A'), (N'B')
			) [t1]([item])
	)

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)

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
			(VALUES
				(N'A'), (N'B')
			) [t1]([item])
	)
ORDER BY
	[x].[ValidOn]

