-- SQLite.MS SQLite
SELECT
	[m_1].[Id],
	[m_1].[Name],
	[d].[Id]
FROM
	[Company] [m_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [m_1].[Id]
ORDER BY
	[d].[Id],
	[m_1].[Id]

-- SQLite.MS SQLite
SELECT
	[k_1].[Item1],
	[k_1].[Item2],
	[k_1].[Item3],
	[d].[Id],
	[d].[Name]
FROM
	(
		SELECT NULL [Item1], NULL [Item2], NULL [Item3] WHERE 1 = 0
		UNION ALL
		VALUES
			(101,1,'Company1'), (102,1,'Company1'), (103,1,'Company1'),
			(201,2,'Company2'), (202,2,'Company2'), (203,2,'Company2'),
			(204,2,'Company2'), (301,3,'Company3'), (302,3,'Company3'),
			(303,3,'Company3'), (304,3,'Company3'), (305,3,'Company3')
		) [k_1]
		INNER JOIN [Employee] [d] ON [d].[DepartmentId] = [k_1].[Item1]
ORDER BY
	[d].[Id]

-- SQLite.MS SQLite
SELECT
	[m_1].[Id],
	[m_1].[Name],
	[d].[Id]
FROM
	[Company] [m_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [m_1].[Id]
ORDER BY
	[d].[Id],
	[m_1].[Id]
;
SELECT
	[c_1].[Id],
	[c_1].[Name]
FROM
	[Company] [c_1]
ORDER BY
	[c_1].[Id]

