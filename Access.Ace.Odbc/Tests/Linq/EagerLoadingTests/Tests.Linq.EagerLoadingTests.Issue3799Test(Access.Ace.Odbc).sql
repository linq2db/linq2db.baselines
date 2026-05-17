-- Access.Ace.Odbc AccessODBC

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
					[Test3799Item] [a_Children]
				WHERE
					[item_1].[Id] = [a_Children].[ParentId]
			) as [Id]
		FROM
			[Test3799Item] [item_1]
	) [m_1]
		INNER JOIN [Test3799Item] [d] ON ([m_1].[Id] = [d].[ParentId])

-- Access.Ace.Odbc AccessODBC

SELECT
	[item_1].[Name],
	(
		SELECT TOP 1
			[a_Children].[Name]
		FROM
			[Test3799Item] [a_Children]
		WHERE
			[item_1].[Id] = [a_Children].[ParentId]
	),
	(
		SELECT TOP 1
			[a_Children_1].[Id]
		FROM
			[Test3799Item] [a_Children_1]
		WHERE
			[item_1].[Id] = [a_Children_1].[ParentId]
	)
FROM
	[Test3799Item] [item_1]

