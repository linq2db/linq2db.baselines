-- SQLite.Classic SQLite

WITH [CTE_1] ([Id], [field_1], [Name])
AS
(
	SELECT
		[c_1].[Id],
		ROW_NUMBER() OVER (ORDER BY [c_1].[Id]),
		[c_1].[Name]
	FROM
		[Company] [c_1]
	ORDER BY
		[c_1].[Id]
),
[CTE_2]
(
	[Detail_Id],
	[Detail_Name],
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
			INNER JOIN [Department] [d] ON [kd].[v0Id] = [d].[CompanyId]
	ORDER BY
		[d].[Id]
),
[CTE_3]
(
	[Detail_Id],
	[Detail_Name],
	[Detail_Salary],
	[field_1],
	[Key_1]
)
AS
(
	SELECT
		[nd].[Id],
		[nd].[Name],
		[nd].[Salary],
		ROW_NUMBER() OVER (ORDER BY [nd].[Id]),
		[pd].[v0Detail_Id]
	FROM
		(
			SELECT DISTINCT
				[t2].[Detail_Id] as [v0Detail_Id]
			FROM
				[CTE_2] [t2]
		) [pd]
			INNER JOIN [Employee] [nd] ON [pd].[v0Detail_Id] = [nd].[DepartmentId]
	ORDER BY
		[nd].[Id]
),
[CTE_4]
(
	[Detail_Id],
	[Detail_EmployeeId],
	[Detail_Title],
	[field_1],
	[Key_1]
)
AS
(
	SELECT
		[nd_1].[Id],
		[nd_1].[EmployeeId],
		[nd_1].[Title],
		ROW_NUMBER() OVER (ORDER BY [nd_1].[Id]),
		[pd_1].[v0Detail_Id]
	FROM
		(
			SELECT DISTINCT
				[t3].[Detail_Id] as [v0Detail_Id]
			FROM
				[CTE_3] [t3]
		) [pd_1]
			INNER JOIN [EmployeeTask] [nd_1] ON [pd_1].[v0Detail_Id] = [nd_1].[EmployeeId]
	ORDER BY
		[nd_1].[Id]
)
SELECT
	[t8].[Item1],
	[t8].[Item2],
	[t8].[Item3],
	[t8].[Item4],
	[t8].[Item5],
	[t8].[Item6]
FROM
	(
		SELECT
			CAST(0 AS INTEGER) as [Item1],
			[t4].[field_1] as [Item3],
			[t4].[Key_1] as [Item2],
			[t4].[Detail_Id] as [Item4],
			[t4].[Detail_Name] as [Item5],
			NULL as [Item6]
		FROM
			[CTE_2] [t4]
		UNION ALL
		SELECT
			CAST(1 AS INTEGER) as [Item1],
			[t5].[field_1] as [Item3],
			[t5].[Key_1] as [Item2],
			[t5].[Detail_Id] as [Item4],
			[t5].[Detail_Name] as [Item5],
			[t5].[Detail_Salary] as [Item6]
		FROM
			[CTE_3] [t5]
		UNION ALL
		SELECT
			CAST(2 AS INTEGER) as [Item1],
			[t6].[field_1] as [Item3],
			[t6].[Key_1] as [Item2],
			[t6].[Detail_Id] as [Item4],
			[t6].[Detail_Title] as [Item5],
			[t6].[Detail_EmployeeId] as [Item6]
		FROM
			[CTE_4] [t6]
		UNION ALL
		SELECT
			CAST(3 AS INTEGER) as [Item1],
			[t7].[field_1] as [Item3],
			[t7].[Id] as [Item2],
			[t7].[Id] as [Item4],
			[t7].[Name] as [Item5],
			NULL as [Item6]
		FROM
			[CTE_1] [t7]
	) [t8]
ORDER BY
	[t8].[Item1],
	[t8].[Item3],
	[t8].[Item2]

