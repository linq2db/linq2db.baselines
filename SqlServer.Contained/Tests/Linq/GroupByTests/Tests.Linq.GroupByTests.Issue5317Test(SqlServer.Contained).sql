-- SqlServer.Contained SqlServer.2019

SELECT
	[t2].[ReferenceName]
FROM
	(
		SELECT
			[g_1].[Id]
		FROM
			[TestTable] [g_1]
		GROUP BY
			[g_1].[Id]
	) [g_2]
		CROSS APPLY (
			SELECT TOP (1)
				[a_Reference].[Name] as [ReferenceName]
			FROM
				[TestTable] [t1]
					INNER JOIN [Reference] [a_Reference] ON [t1].[ReferenceId] = [a_Reference].[Id]
			WHERE
				[g_2].[Id] = [t1].[Id]
		) [t2]

