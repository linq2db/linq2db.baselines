-- SQLite.MS SQLite

SELECT
	[d].[Id],
	[d].[Name]
FROM
	[Department] [d]
ORDER BY
	[d].[Id]

-- SQLite.MS SQLite

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[DepartmentId],
	[d].[Name],
	[d].[Salary]
FROM
	(
		SELECT NULL [item] WHERE 1 = 0
		UNION ALL
		VALUES
			(101), (102), (103)
		) [k_1]
		INNER JOIN [Employee] [d] ON [d].[DepartmentId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SQLite.MS SQLite

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[DepartmentId],
	[d].[Name],
	[d].[Rate]
FROM
	(
		SELECT NULL [item] WHERE 1 = 0
		UNION ALL
		VALUES
			(101), (102), (103)
		) [k_1]
		INNER JOIN [Contractor] [d] ON [d].[DepartmentId] = [k_1].[item]
ORDER BY
	[d].[Id]

