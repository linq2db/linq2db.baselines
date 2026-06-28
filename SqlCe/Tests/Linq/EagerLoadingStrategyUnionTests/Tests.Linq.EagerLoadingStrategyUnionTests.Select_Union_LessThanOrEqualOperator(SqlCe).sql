-- SqlCe

SELECT
	[d].[Id],
	[d].[Name]
FROM
	[Department] [d]
ORDER BY
	[d].[Id]

-- SqlCe

SELECT
	[k_1].[item] as [item_1],
	[d].[Id],
	[d].[DepartmentId],
	[d].[Name],
	[d].[Rate]
FROM
	(
		SELECT 101 AS [item]
		UNION ALL
		SELECT 102 AS [item]
		UNION ALL
		SELECT 103 AS [item]
		UNION ALL
		SELECT 201 AS [item]
		UNION ALL
		SELECT 202 AS [item]
		UNION ALL
		SELECT 203 AS [item]
		UNION ALL
		SELECT 204 AS [item]
		UNION ALL
		SELECT 301 AS [item]
		UNION ALL
		SELECT 302 AS [item]
		UNION ALL
		SELECT 303 AS [item]
		UNION ALL
		SELECT 304 AS [item]
		UNION ALL
		SELECT 305 AS [item]) [k_1]
		INNER JOIN [Contractor] [d] ON [d].[DepartmentId] <= [k_1].[item]
ORDER BY
	[d].[Id]

