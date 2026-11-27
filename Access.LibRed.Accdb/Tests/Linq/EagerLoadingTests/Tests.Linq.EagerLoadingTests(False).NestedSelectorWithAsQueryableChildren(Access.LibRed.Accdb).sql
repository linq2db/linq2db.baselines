-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[m_1].[Id],
	[d].[Name]
FROM
	(
		SELECT DISTINCT
			(
				SELECT TOP 1
					[a_Children].[Id]
				FROM
					[RecursiveChildrenItem] [a_Children]
				WHERE
					[item_1].[Id] = [a_Children].[ParentId]
			) as [Id]
		FROM
			[RecursiveChildrenItem] [item_1]
	) [m_1]
		INNER JOIN [RecursiveChildrenItem] [d] ON ([m_1].[Id] = [d].[ParentId])

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[item_1].[Name],
	[t1].[Name] as [Name_1],
	[t1].[Id]
FROM
	[RecursiveChildrenItem] [item_1]
		OUTER APPLY (
			SELECT TOP 1
				[a_Children].[Name],
				[a_Children].[Id]
			FROM
				[RecursiveChildrenItem] [a_Children]
			WHERE
				[item_1].[Id] = [a_Children].[ParentId]
		) [t1]

