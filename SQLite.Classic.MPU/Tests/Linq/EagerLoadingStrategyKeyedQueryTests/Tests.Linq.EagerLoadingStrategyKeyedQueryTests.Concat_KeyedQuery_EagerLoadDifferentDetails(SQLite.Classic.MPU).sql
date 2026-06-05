-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[Kind],
	[t1].[Kind] = 'Active'
FROM
	(
		SELECT
			[d].[Id],
			[d].[Name],
			CAST('Active' AS NVarChar(255)) as [Kind]
		FROM
			[Department] [d]
		WHERE
			[d].[IsActive]
		UNION ALL
		SELECT
			[d_1].[Id],
			[d_1].[Name],
			CAST('Inactive' AS NVarChar(255)) as [Kind]
		FROM
			[Department] [d_1]
		WHERE
			NOT [d_1].[IsActive]
	) [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[k_1].[Item1],
	[k_1].[Item2],
	[d].[Id],
	[d].[Name]
FROM
	(
		SELECT NULL [Item1], NULL [Item2] WHERE 1 = 0
		UNION ALL
		VALUES
			(101,'Active'), (103,'Active'), (201,'Active'), (203,'Active'),
			(301,'Active'), (303,'Active'), (305,'Active'), (102,'Inactive'),
			(202,'Inactive'), (204,'Inactive'), (302,'Inactive'),
			(304,'Inactive')
		) [k_1]
		INNER JOIN [Employee] [d] ON [k_1].[Item1] = [d].[DepartmentId] AND [k_1].[Item2] = 'Active'
WHERE
	[d].[Salary] > 45000

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[k_1].[Item1],
	[k_1].[Item2],
	[d].[Id],
	[d].[Name]
FROM
	(
		SELECT NULL [Item1], NULL [Item2] WHERE 1 = 0
		UNION ALL
		VALUES
			(101,'Active'), (103,'Active'), (201,'Active'), (203,'Active'),
			(301,'Active'), (303,'Active'), (305,'Active'), (102,'Inactive'),
			(202,'Inactive'), (204,'Inactive'), (302,'Inactive'),
			(304,'Inactive')
		) [k_1]
		INNER JOIN [Contractor] [d] ON [k_1].[Item1] = [d].[DepartmentId] AND [k_1].[Item2] = 'Inactive'

