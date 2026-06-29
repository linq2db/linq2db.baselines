-- SqlCe

SELECT
	[c_1].[Id],
	[c_1].[Name]
FROM
	[Company] [c_1]
ORDER BY
	[c_1].[Id]

-- SqlCe

SELECT
	[d].[CompanyId],
	[d].[Id],
	[d].[Name]
FROM
	[Department] [d]
WHERE
	[d].[CompanyId] IN (1, 2, 3)
ORDER BY
	[d].[Id]

-- SqlCe

SELECT
	[e].[DepartmentId],
	[e].[Id],
	[e].[Name],
	[e].[Salary]
FROM
	[Employee] [e]
WHERE
	[e].[DepartmentId] IN (101, 102, 103, 201, 202, 203, 204, 301, 302, 303, 304, 305)
ORDER BY
	[e].[Id]

-- SqlCe

SELECT
	[k_1].[item] as [item_1],
	[d].[Id],
	[d].[EmployeeId],
	[d].[Title]
FROM
	(
		SELECT 10101 AS [item]
		UNION ALL
		SELECT 10201 AS [item]
		UNION ALL
		SELECT 10202 AS [item]
		UNION ALL
		SELECT 10301 AS [item]
		UNION ALL
		SELECT 10302 AS [item]
		UNION ALL
		SELECT 10303 AS [item]
		UNION ALL
		SELECT 20101 AS [item]
		UNION ALL
		SELECT 20201 AS [item]
		UNION ALL
		SELECT 20202 AS [item]
		UNION ALL
		SELECT 20301 AS [item]
		UNION ALL
		SELECT 20302 AS [item]
		UNION ALL
		SELECT 20303 AS [item]
		UNION ALL
		SELECT 20401 AS [item]
		UNION ALL
		SELECT 20402 AS [item]
		UNION ALL
		SELECT 20403 AS [item]
		UNION ALL
		SELECT 20404 AS [item]
		UNION ALL
		SELECT 30101 AS [item]
		UNION ALL
		SELECT 30201 AS [item]
		UNION ALL
		SELECT 30202 AS [item]
		UNION ALL
		SELECT 30301 AS [item]
		UNION ALL
		SELECT 30302 AS [item]
		UNION ALL
		SELECT 30303 AS [item]
		UNION ALL
		SELECT 30401 AS [item]
		UNION ALL
		SELECT 30402 AS [item]
		UNION ALL
		SELECT 30403 AS [item]
		UNION ALL
		SELECT 30404 AS [item]
		UNION ALL
		SELECT 30501 AS [item]
		UNION ALL
		SELECT 30502 AS [item]
		UNION ALL
		SELECT 30503 AS [item]
		UNION ALL
		SELECT 30504 AS [item]
		UNION ALL
		SELECT 30505 AS [item]) [k_1]
		INNER JOIN [EmployeeTask] [d] ON [k_1].[item] = [d].[EmployeeId]
ORDER BY
	[d].[Id]

