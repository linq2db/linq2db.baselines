-- SqlServer.2025.MS SqlServer.2025

WITH [CTE_1] ([Id], [field_1], [Name])
AS
(
	SELECT
		[c_1].[Id],
		ROW_NUMBER() OVER (ORDER BY [c_1].[Id]),
		[c_1].[Name]
	FROM
		[Company] [c_1]
),
[CTE_2]
(
	[Detail_DeptId],
	[Detail_DeptName],
	[field_1],
	[Key_1]
)
AS
(
	SELECT
		[d].[Id],
		[d].[Name],
		ROW_NUMBER() OVER (ORDER BY [d].[Id]),
		[kd].[v0Id]
	FROM
		(
			SELECT DISTINCT
				[t1].[Id] as [v0Id]
			FROM
				[CTE_1] [t1]
		) [kd]
			INNER JOIN [Department] [d] ON [d].[CompanyId] = [kd].[v0Id]
)
SELECT
	[t4].[Item1],
	[t4].[Item2],
	[t4].[Item3],
	[t4].[Item4],
	[t4].[Item5],
	[t4].[Item6],
	[t4].[Item7]
FROM
	(
		SELECT
			CAST(0 AS Int) as [Item1],
			[t2].[Key_1] as [Item2],
			[t2].[field_1] as [Item3],
			[t2].[Detail_DeptId] as [Item4],
			[t2].[Detail_DeptName] as [Item5],
			NULL as [Item6],
			NULL as [Item7]
		FROM
			[CTE_2] [t2]
		UNION ALL
		SELECT
			[t3].[Item1],
			[t3].[v0Id] as [Item2],
			[t3].[v1field_1] as [Item3],
			NULL as [Item4],
			NULL as [Item5],
			[t3].[v0Id] as [Item6],
			[t3].[v2Name] as [Item7]
		FROM
			(
				SELECT
					CAST(1 AS Int) as [Item1],
					[p].[Id] as [v0Id],
					[p].[field_1] as [v1field_1],
					[p].[Name] as [v2Name]
				FROM
					[CTE_1] [p]
			) [t3]
	) [t4]
ORDER BY
	[t4].[Item1],
	[t4].[Item2],
	[t4].[Item3]

