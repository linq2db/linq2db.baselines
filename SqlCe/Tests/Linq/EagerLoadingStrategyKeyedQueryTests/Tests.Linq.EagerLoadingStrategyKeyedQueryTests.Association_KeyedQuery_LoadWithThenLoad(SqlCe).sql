-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Company] [t1]
ORDER BY
	[t1].[Id]

-- SqlCe

SELECT
	[m_1].[Id],
	[d_1].[Id] as [Id_1],
	[d_1].[DepartmentId],
	[d_1].[Name],
	[d_1].[Salary]
FROM
	(
		SELECT DISTINCT
			[d].[Id]
		FROM
			(
				SELECT 1 AS [item]
				UNION ALL
				SELECT 2 AS [item]
				UNION ALL
				SELECT 3 AS [item]) [t1]
				INNER JOIN [Department] [d] ON [t1].[item] = [d].[CompanyId]
	) [m_1]
		INNER JOIN [Employee] [d_1] ON [m_1].[Id] = [d_1].[DepartmentId]

-- SqlCe

SELECT
	[k_1].[item] as [item_1],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2 AS [item]
		UNION ALL
		SELECT 3 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [k_1].[item] = [d].[CompanyId]

