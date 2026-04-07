-- SqlServer.Contained SqlServer.2019

WITH [CTE_1] ([Id], [field_1], [Name])
AS
(
	SELECT
		[t1].[Id],
		ROW_NUMBER() OVER (ORDER BY [t1].[Id]),
		[t1].[Name]
	FROM
		[Company] [t1]
),
[CTE_2]
(
	[Detail_Id],
	[Detail_CompanyId],
	[Detail_Name],
	[Detail_IsActive],
	[Key_1],
	[field_1]
)
AS
(
	SELECT
		[d].[Id],
		[d].[CompanyId],
		[d].[Name],
		[d].[IsActive],
		[kd].[v0Id],
		CAST(0 AS BigInt)
	FROM
		(
			SELECT DISTINCT
				[t2].[Id] as [v0Id]
			FROM
				[CTE_1] [t2]
		) [kd]
			INNER JOIN [Department] [d] ON [kd].[v0Id] = [d].[CompanyId]
),
[CTE_3]
(
	[Detail_Id],
	[Detail_DepartmentId],
	[Detail_Name],
	[Detail_Salary],
	[field_1],
	[Key_1]
)
AS
(
	SELECT
		[nd].[Id],
		[nd].[DepartmentId],
		[nd].[Name],
		[nd].[Salary],
		CAST(0 AS BigInt),
		[pd].[v0Detail_Id]
	FROM
		(
			SELECT DISTINCT
				[t3].[Detail_Id] as [v0Detail_Id]
			FROM
				[CTE_2] [t3]
		) [pd]
			INNER JOIN [Employee] [nd] ON [pd].[v0Detail_Id] = [nd].[DepartmentId]
)
SELECT
	[t7].[Item1],
	[t7].[Item2],
	[t7].[Item3],
	[t7].[Item4],
	[t7].[Item5],
	[t7].[Item6],
	[t7].[Item7],
	[t7].[Item1_1],
	[t7].[Item2_1],
	[t7].[Item3_1]
FROM
	(
		SELECT
			CAST(0 AS Int) as [Item1],
			[t4].[Key_1] as [Item2],
			[t4].[field_1] as [Item3],
			[t4].[Detail_Id] as [Item4],
			[t4].[Detail_CompanyId] as [Item5],
			[t4].[Detail_Name] as [Item6],
			[t4].[Detail_IsActive] as [Item7],
			NULL as [Item1_1],
			NULL as [Item2_1],
			NULL as [Item3_1]
		FROM
			[CTE_2] [t4]
		UNION ALL
		SELECT
			CAST(1 AS Int) as [Item1],
			[t5].[Key_1] as [Item2],
			[t5].[field_1] as [Item3],
			[t5].[Detail_Id] as [Item4],
			[t5].[Detail_DepartmentId] as [Item5],
			[t5].[Detail_Name] as [Item6],
			NULL as [Item7],
			[t5].[Detail_Salary] as [Item1_1],
			NULL as [Item2_1],
			NULL as [Item3_1]
		FROM
			[CTE_3] [t5]
		UNION ALL
		SELECT
			[t6].[Item1],
			[t6].[v0Id] as [Item2],
			[t6].[v1field_1] as [Item3],
			NULL as [Item4],
			NULL as [Item5],
			NULL as [Item6],
			NULL as [Item7],
			NULL as [Item1_1],
			[t6].[v0Id] as [Item2_1],
			[t6].[v2Name] as [Item3_1]
		FROM
			(
				SELECT
					CAST(2 AS Int) as [Item1],
					[p].[Id] as [v0Id],
					[p].[field_1] as [v1field_1],
					[p].[Name] as [v2Name]
				FROM
					[CTE_1] [p]
			) [t6]
	) [t7]
ORDER BY
	[t7].[Item1],
	[t7].[Item2],
	[t7].[Item3]

