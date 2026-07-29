-- SqlServer.SA SqlServer.2019
SELECT
	(
		SELECT TOP (1)
			[a_Reference].[Name]
		FROM
			[TestTable] [t1]
				INNER JOIN [Reference] [a_Reference] ON [t1].[ReferenceId] = [a_Reference].[Id]
		WHERE
			[g_1].[Id] = [t1].[Id]
	)
FROM
	[TestTable] [g_1]

-- SqlServer.SA SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[ReferenceId],
	[a_Reference].[Id],
	[a_Reference].[Name]
FROM
	[TestTable] [t1]
		INNER JOIN [Reference] [a_Reference] ON [t1].[ReferenceId] = [a_Reference].[Id]

-- SqlServer.SA SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[ReferenceId]
FROM
	[TestTable] [t1]

