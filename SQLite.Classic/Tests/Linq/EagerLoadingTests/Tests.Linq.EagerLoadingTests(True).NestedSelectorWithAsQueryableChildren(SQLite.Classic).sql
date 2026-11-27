-- SQLite.Classic SQLite
SELECT
	[m_1].[Id],
	[d].[Name]
FROM
	(
		SELECT DISTINCT
			(
				SELECT
					[a_Children].[Id]
				FROM
					[RecursiveChildrenItem] [a_Children]
				WHERE
					[item_1].[Id] = [a_Children].[ParentId]
				LIMIT 1
			) as [Id]
		FROM
			[RecursiveChildrenItem] [item_1]
	) [m_1]
		INNER JOIN [RecursiveChildrenItem] [d] ON [m_1].[Id] = [d].[ParentId]
;
SELECT
	[item_1].[Name],
	[t1].[Name],
	[t1].[Id]
FROM
	[RecursiveChildrenItem] [item_1]
		LEFT JOIN (
			SELECT
				[a_Children].[Name],
				[a_Children].[Id],
				ROW_NUMBER() OVER (PARTITION BY [a_Children].[ParentId] ORDER BY [a_Children].[ParentId]) as [rn],
				[a_Children].[ParentId]
			FROM
				[RecursiveChildrenItem] [a_Children]
		) [t1] ON [item_1].[Id] = [t1].[ParentId] AND [t1].[rn] = 1

