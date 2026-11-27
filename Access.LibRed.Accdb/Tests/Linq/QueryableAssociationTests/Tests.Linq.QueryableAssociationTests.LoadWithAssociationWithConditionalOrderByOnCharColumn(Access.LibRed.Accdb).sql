-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[m_1].[Id],
	[m_1].[C1],
	[d].[Id] as [Id_1],
	[d].[FormId],
	[d].[OrderIndex],
	[d].[Name1],
	[d].[Name2],
	[d].[Name3]
FROM
	(
		SELECT TOP 1
			[t1].[Id],
			[t1].[C1]
		FROM
			[ConditionalOrderForm] [t1]
	) [m_1]
		INNER JOIN [ConditionalOrderItem] [d] ON ([d].[FormId] = [m_1].[Id])
ORDER BY
	CASE
		WHEN [m_1].[C1] = 'T' THEN [d].[OrderIndex]
		ELSE 0
	END,
	CASE
		WHEN [m_1].[C1] <> 'T' THEN [d].[Name1]
		ELSE ''
	END,
	CASE
		WHEN [m_1].[C1] <> 'T' THEN [d].[Name2]
		ELSE ''
	END,
	CASE
		WHEN [m_1].[C1] <> 'T' THEN [d].[Name3]
		ELSE ''
	END

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 1
	[t1].[Id],
	[t1].[C1]
FROM
	[ConditionalOrderForm] [t1]

