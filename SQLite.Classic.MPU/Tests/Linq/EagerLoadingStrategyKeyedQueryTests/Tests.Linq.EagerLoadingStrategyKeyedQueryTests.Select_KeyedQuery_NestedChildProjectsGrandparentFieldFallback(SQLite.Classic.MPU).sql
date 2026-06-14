-- SQLite.Classic.MPU SQLite.Classic SQLite

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

-- SQLite.Classic.MPU SQLite.Classic SQLite

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
			(101,'Company1',1), (102,'Company1',1), (103,'Company1',1),
			(201,'Company2',2), (202,'Company2',2), (203,'Company2',2),
			(204,'Company2',2), (301,'Company3',3), (302,'Company3',3),
			(303,'Company3',3), (304,'Company3',3), (305,'Company3',3)
		) [k_1]
		INNER JOIN [Employee] [d] ON [d].[DepartmentId] = [k_1].[Item1]
ORDER BY
	[d].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[c_1].[Id],
	[c_1].[Name]
FROM
	[Company] [c_1]
ORDER BY
	[c_1].[Id]

