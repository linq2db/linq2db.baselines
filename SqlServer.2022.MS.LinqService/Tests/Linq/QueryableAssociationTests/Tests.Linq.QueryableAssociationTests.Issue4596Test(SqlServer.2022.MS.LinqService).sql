BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

SELECT
	[m_1].[Id],
	[m_1].[cond],
	[m_1].[cond_1],
	[d].[Id],
	[d].[FormId],
	[d].[OrderIndex],
	[d].[Name1],
	[d].[Name2],
	[d].[Name3]
FROM
	(
		SELECT TOP (1)
			[t1].[Id],
			IIF([t1].[C1] = N'T', 1, 0) as [cond],
			IIF([t1].[C1] <> N'T', 1, 0) as [cond_1]
		FROM
			[Issue4596Form] [t1]
	) [m_1]
		CROSS JOIN [Issue4596Item] [d]
WHERE
	[d].[FormId] = [m_1].[Id]
ORDER BY
	IIF([m_1].[cond] = 1, [d].[OrderIndex], 0),
	IIF([m_1].[cond_1] = 1, [d].[Name1], N''),
	IIF([m_1].[cond_1] = 1, [d].[Name2], N''),
	IIF([m_1].[cond_1] = 1, [d].[Name3], N'')

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

SELECT TOP (1)
	[t1].[Id],
	[t1].[C1],
	IIF([t1].[C1] = N'T', 1, 0),
	IIF([t1].[C1] <> N'T', 1, 0)
FROM
	[Issue4596Form] [t1]

