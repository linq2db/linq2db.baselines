-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[Kind],
	CASE
		WHEN [t1].[Kind] = 'Active' THEN 1
		ELSE 0
	END as [c1]
FROM
	(
		SELECT
			[d].[Id],
			[d].[Name],
			CAST('Active' AS NVarChar(255)) as [Kind]
		FROM
			[Department] [d]
		WHERE
			[d].[IsActive] = 1
		UNION ALL
		SELECT
			[d_1].[Id],
			[d_1].[Name],
			CAST('Inactive' AS NVarChar(255)) as [Kind]
		FROM
			[Department] [d_1]
		WHERE
			[d_1].[IsActive] = 0
	) [t1]

-- SqlCe

SELECT
	[k_1].[Item1],
	[k_1].[Item2],
	[d].[Id],
	[d].[Name]
FROM
	(
		SELECT 101 AS [Item1], 'Active' AS [Item2]
		UNION ALL
		SELECT 103 AS [Item1], 'Active' AS [Item2]
		UNION ALL
		SELECT 201 AS [Item1], 'Active' AS [Item2]
		UNION ALL
		SELECT 203 AS [Item1], 'Active' AS [Item2]
		UNION ALL
		SELECT 301 AS [Item1], 'Active' AS [Item2]
		UNION ALL
		SELECT 303 AS [Item1], 'Active' AS [Item2]
		UNION ALL
		SELECT 305 AS [Item1], 'Active' AS [Item2]
		UNION ALL
		SELECT 102 AS [Item1], 'Inactive' AS [Item2]
		UNION ALL
		SELECT 202 AS [Item1], 'Inactive' AS [Item2]
		UNION ALL
		SELECT 204 AS [Item1], 'Inactive' AS [Item2]
		UNION ALL
		SELECT 302 AS [Item1], 'Inactive' AS [Item2]
		UNION ALL
		SELECT 304 AS [Item1], 'Inactive' AS [Item2]) [k_1]
		INNER JOIN [Employee] [d] ON [k_1].[Item1] = [d].[DepartmentId] AND [k_1].[Item2] = 'Active'
WHERE
	[d].[Salary] > 45000
ORDER BY
	[d].[Id]

-- SqlCe

SELECT
	[k_1].[Item1],
	[k_1].[Item2],
	[d].[Id],
	[d].[Name]
FROM
	(
		SELECT 101 AS [Item1], 'Active' AS [Item2]
		UNION ALL
		SELECT 103 AS [Item1], 'Active' AS [Item2]
		UNION ALL
		SELECT 201 AS [Item1], 'Active' AS [Item2]
		UNION ALL
		SELECT 203 AS [Item1], 'Active' AS [Item2]
		UNION ALL
		SELECT 301 AS [Item1], 'Active' AS [Item2]
		UNION ALL
		SELECT 303 AS [Item1], 'Active' AS [Item2]
		UNION ALL
		SELECT 305 AS [Item1], 'Active' AS [Item2]
		UNION ALL
		SELECT 102 AS [Item1], 'Inactive' AS [Item2]
		UNION ALL
		SELECT 202 AS [Item1], 'Inactive' AS [Item2]
		UNION ALL
		SELECT 204 AS [Item1], 'Inactive' AS [Item2]
		UNION ALL
		SELECT 302 AS [Item1], 'Inactive' AS [Item2]
		UNION ALL
		SELECT 304 AS [Item1], 'Inactive' AS [Item2]) [k_1]
		INNER JOIN [Contractor] [d] ON [k_1].[Item1] = [d].[DepartmentId] AND [k_1].[Item2] = 'Inactive'
ORDER BY
	[d].[Id]

