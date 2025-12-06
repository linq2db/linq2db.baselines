-- SqlServer.SA.MS SqlServer.2019

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
		INNER JOIN [Issue4596Item] [d] ON [d].[FormId] = [m_1].[Id]

-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (1)
	[t1].[Id],
	[t1].[C1],
	IIF([t1].[C1] = N'T', 1, 0),
	IIF([t1].[C1] <> N'T', 1, 0)
FROM
	[Issue4596Form] [t1]

