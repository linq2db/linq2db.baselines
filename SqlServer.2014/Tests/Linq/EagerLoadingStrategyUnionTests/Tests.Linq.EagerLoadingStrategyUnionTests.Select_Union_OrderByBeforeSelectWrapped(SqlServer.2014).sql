-- SqlServer.2014

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
	[Detail_Dept_Id],
	[Detail_Dept_CompanyId],
	[Detail_Dept_Name],
	[Detail_Dept_IsActive],
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
		ROW_NUMBER() OVER (ORDER BY [d].[Id])
	FROM
		(
			SELECT DISTINCT
				[t1].[Id] as [v0Id]
			FROM
				[CTE_1] [t1]
		) [kd]
			INNER JOIN [Department] [d] ON [d].[CompanyId] = [kd].[v0Id]
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
		ROW_NUMBER() OVER (ORDER BY [nd].[Id]),
		[pd].[v0Detail_Dept_Id]
	FROM
		(
			SELECT DISTINCT
				[t2].[Detail_Dept_Id] as [v0Detail_Dept_Id]
			FROM
				[CTE_2] [t2]
		) [pd]
			INNER JOIN [Employee] [nd] ON [nd].[DepartmentId] = [pd].[v0Detail_Dept_Id]
)
SELECT
	[t6].[Item1],
	[t6].[Item2],
	[t6].[Item3],
	[t6].[Item4],
	[t6].[Item5],
	[t6].[Item6],
	[t6].[Item7],
	[t6].[Item1_1],
	[t6].[Item2_1],
	[t6].[Item3_1]
FROM
	(
		SELECT
			CAST(0 AS Int) as [Item1],
			[t3].[Key_1] as [Item2],
			[t3].[field_1] as [Item3],
			[t3].[Detail_Dept_Id] as [Item4],
			[t3].[Detail_Dept_CompanyId] as [Item5],
			[t3].[Detail_Dept_Name] as [Item6],
			[t3].[Detail_Dept_IsActive] as [Item7],
			NULL as [Item1_1],
			NULL as [Item2_1],
			NULL as [Item3_1]
		FROM
			[CTE_2] [t3]
		UNION ALL
		SELECT
			CAST(1 AS Int) as [Item1],
			[t4].[Key_1] as [Item2],
			[t4].[field_1] as [Item3],
			[t4].[Detail_Id] as [Item4],
			[t4].[Detail_DepartmentId] as [Item5],
			[t4].[Detail_Name] as [Item6],
			NULL as [Item7],
			[t4].[Detail_Salary] as [Item1_1],
			NULL as [Item2_1],
			NULL as [Item3_1]
		FROM
			[CTE_3] [t4]
		UNION ALL
		SELECT
			CAST(2 AS Int) as [Item1],
			[t5].[Id] as [Item2],
			[t5].[field_1] as [Item3],
			NULL as [Item4],
			NULL as [Item5],
			NULL as [Item6],
			NULL as [Item7],
			NULL as [Item1_1],
			[t5].[Id] as [Item2_1],
			[t5].[Name] as [Item3_1]
		FROM
			[CTE_1] [t5]
	) [t6]
ORDER BY
	[t6].[Item1],
	[t6].[Item2],
	[t6].[Item3]

