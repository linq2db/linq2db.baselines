-- SqlCe

SELECT
	[d].[Id]
FROM
	[Department] [d]
ORDER BY
	[d].[Id]

-- SqlCe

SELECT
	[k_1].[item] as [item_1],
	[d].[Id],
	[d].[DepartmentId],
	[d].[Value] as [Value_1]
FROM
	(
		SELECT 101 AS [item]
		UNION ALL
		SELECT 102 AS [item]
		UNION ALL
		SELECT 103 AS [item]) [k_1]
		INNER JOIN [ConvA] [d] ON [d].[DepartmentId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlCe

SELECT
	[k_1].[item] as [item_1],
	[d].[Id],
	[d].[DepartmentId],
	[d].[Value] as [Value_1]
FROM
	(
		SELECT 101 AS [item]
		UNION ALL
		SELECT 102 AS [item]
		UNION ALL
		SELECT 103 AS [item]) [k_1]
		INNER JOIN [ConvB] [d] ON [d].[DepartmentId] = [k_1].[item]
ORDER BY
	[d].[Id]

