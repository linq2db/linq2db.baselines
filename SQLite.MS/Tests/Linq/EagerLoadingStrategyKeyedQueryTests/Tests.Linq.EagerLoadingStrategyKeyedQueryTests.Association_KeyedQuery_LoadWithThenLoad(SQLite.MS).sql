-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Company] [t1]
ORDER BY
	[t1].[Id]

-- SQLite.MS SQLite

SELECT
	[m_1].[Id],
	[d_1].[Id],
	[d_1].[DepartmentId],
	[d_1].[Name],
	[d_1].[Salary]
FROM
	(
		SELECT DISTINCT
			[d].[Id]
		FROM
			(
				SELECT NULL [item] WHERE 1 = 0
				UNION ALL
				VALUES
					(1), (2), (3)
				) [t1]
				INNER JOIN [Department] [d] ON [t1].[item] = [d].[CompanyId]
	) [m_1]
		INNER JOIN [Employee] [d_1] ON [m_1].[Id] = [d_1].[DepartmentId]

-- SQLite.MS SQLite

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT NULL [item] WHERE 1 = 0
		UNION ALL
		VALUES
			(1), (2), (3)
		) [k_1]
		INNER JOIN [Department] [d] ON [k_1].[item] = [d].[CompanyId]

