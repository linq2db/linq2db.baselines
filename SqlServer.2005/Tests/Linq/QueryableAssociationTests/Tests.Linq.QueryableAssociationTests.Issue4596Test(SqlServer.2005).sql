-- SqlServer.2005

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
			CASE
				WHEN [t1].[C1] = N'T' THEN 1
				ELSE 0
			END as [cond],
			CASE
				WHEN [t1].[C1] <> N'T' THEN 1
				ELSE 0
			END as [cond_1]
		FROM
			[Issue4596Form] [t1]
	) [m_1]
		INNER JOIN [Issue4596Item] [d] ON [d].[FormId] = [m_1].[Id]

-- SqlServer.2005

SELECT TOP (1)
	[t1].[Id],
	[t1].[C1],
	CASE
		WHEN [t1].[C1] = N'T' THEN 1
		ELSE 0
	END,
	CASE
		WHEN [t1].[C1] <> N'T' THEN 1
		ELSE 0
	END
FROM
	[Issue4596Form] [t1]

