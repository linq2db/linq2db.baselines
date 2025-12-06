-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Children],
	[d].[Name]
FROM
	(
		SELECT DISTINCT
			[t1].[Children]
		FROM
			[Test3799Item] [item_1]
				LEFT JOIN (
					SELECT
						[a_Children].[Id] as [Children],
						ROW_NUMBER() OVER (PARTITION BY [a_Children].[ParentId] ORDER BY [a_Children].[ParentId]) as [rn],
						[a_Children].[ParentId]
					FROM
						[Test3799Item] [a_Children]
				) [t1] ON [item_1].[Id] = [t1].[ParentId] AND [t1].[rn] <= 1
	) [m_1]
		INNER JOIN [Test3799Item] [d] ON [m_1].[Children] = [d].[ParentId] OR [m_1].[Children] IS NULL AND [d].[ParentId] IS NULL

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[item_1].[Name],
	[t1].[Name],
	[t1].[Children]
FROM
	[Test3799Item] [item_1]
		LEFT JOIN (
			SELECT
				[a_Children].[Name],
				[a_Children].[Id] as [Children],
				ROW_NUMBER() OVER (PARTITION BY [a_Children].[ParentId] ORDER BY [a_Children].[ParentId]) as [rn],
				[a_Children].[ParentId]
			FROM
				[Test3799Item] [a_Children]
		) [t1] ON [item_1].[Id] = [t1].[ParentId] AND [t1].[rn] <= 1

