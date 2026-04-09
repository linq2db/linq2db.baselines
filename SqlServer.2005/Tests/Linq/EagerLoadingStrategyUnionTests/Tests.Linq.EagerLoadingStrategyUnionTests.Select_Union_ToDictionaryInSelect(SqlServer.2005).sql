-- SqlServer.2005

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
	[Detail_Id],
	[Detail_CompanyId],
	[Detail_Name],
	[Detail_IsActive],
	[field_1],
	[Key_1]
)
AS
(
	SELECT
		[d].[Id],
		[d].[CompanyId],
		[d].[Name],
		[d].[IsActive],
		CAST(0 AS BigInt),
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
	[t4].[Item7],
	[t4].[Item1_1],
	[t4].[Item2_1]
FROM
	(
		SELECT
			CAST(0 AS Int) as [Item1],
			[t2].[Key_1] as [Item2],
			[t2].[field_1] as [Item3],
			[t2].[Detail_Id] as [Item4],
			[t2].[Detail_CompanyId] as [Item5],
			[t2].[Detail_Name] as [Item6],
			[t2].[Detail_IsActive] as [Item7],
			NULL as [Item1_1],
			NULL as [Item2_1]
		FROM
			[CTE_2] [t2]
		UNION ALL
		SELECT
			[t3].[Item1],
			[t3].[v0Id] as [Item2],
			[t3].[v1field_1] as [Item3],
			NULL as [Item4],
			NULL as [Item5],
			NULL as [Item6],
			NULL as [Item7],
			[t3].[v0Id] as [Item1_1],
			[t3].[v2Name] as [Item2_1]
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

