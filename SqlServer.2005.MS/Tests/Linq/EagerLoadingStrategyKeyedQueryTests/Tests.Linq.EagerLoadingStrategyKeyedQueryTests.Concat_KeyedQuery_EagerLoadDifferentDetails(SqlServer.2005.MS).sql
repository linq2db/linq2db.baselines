-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[Kind],
	CASE
		WHEN [t1].[Kind] = N'Active' THEN 1
		ELSE 0
	END
FROM
	(
		SELECT
			[d].[Id],
			[d].[Name],
			CAST(N'Active' AS NVarChar(4000)) as [Kind]
		FROM
			[Department] [d]
		WHERE
			[d].[IsActive] = 1
		UNION ALL
		SELECT
			[d_1].[Id],
			[d_1].[Name],
			CAST(N'Inactive' AS NVarChar(4000)) as [Kind]
		FROM
			[Department] [d_1]
		WHERE
			[d_1].[IsActive] = 0
	) [t1]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[k_1].[Item1],
	[k_1].[Item2],
	[d].[Id],
	[d].[Name]
FROM
	(
		SELECT 101 AS [Item1], N'Active' AS [Item2]
		UNION ALL
		SELECT 103, N'Active'
		UNION ALL
		SELECT 201, N'Active'
		UNION ALL
		SELECT 203, N'Active'
		UNION ALL
		SELECT 301, N'Active'
		UNION ALL
		SELECT 303, N'Active'
		UNION ALL
		SELECT 305, N'Active'
		UNION ALL
		SELECT 102, N'Inactive'
		UNION ALL
		SELECT 202, N'Inactive'
		UNION ALL
		SELECT 204, N'Inactive'
		UNION ALL
		SELECT 302, N'Inactive'
		UNION ALL
		SELECT 304, N'Inactive') [k_1]
		INNER JOIN [Employee] [d] ON [k_1].[Item1] = [d].[DepartmentId] AND [k_1].[Item2] = N'Active'
WHERE
	[d].[Salary] > 45000

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[k_1].[Item1],
	[k_1].[Item2],
	[d].[Id],
	[d].[Name]
FROM
	(
		SELECT 101 AS [Item1], N'Active' AS [Item2]
		UNION ALL
		SELECT 103, N'Active'
		UNION ALL
		SELECT 201, N'Active'
		UNION ALL
		SELECT 203, N'Active'
		UNION ALL
		SELECT 301, N'Active'
		UNION ALL
		SELECT 303, N'Active'
		UNION ALL
		SELECT 305, N'Active'
		UNION ALL
		SELECT 102, N'Inactive'
		UNION ALL
		SELECT 202, N'Inactive'
		UNION ALL
		SELECT 204, N'Inactive'
		UNION ALL
		SELECT 302, N'Inactive'
		UNION ALL
		SELECT 304, N'Inactive') [k_1]
		INNER JOIN [Contractor] [d] ON [k_1].[Item1] = [d].[DepartmentId] AND [k_1].[Item2] = N'Inactive'

