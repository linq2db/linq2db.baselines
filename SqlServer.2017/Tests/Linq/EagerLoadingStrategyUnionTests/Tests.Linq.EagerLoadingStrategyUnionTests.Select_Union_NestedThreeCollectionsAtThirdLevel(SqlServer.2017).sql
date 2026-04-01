-- SqlServer.2017

WITH [CTE_1] ([Key_1], [RN], [Data_Name])
AS
(
	SELECT
		[cte_x].[Id],
		ROW_NUMBER() OVER (ORDER BY [cte_x].[Id]),
		[cte_x].[Name]
	FROM
		[Company] [cte_x]
),
[CTE_2]
(
	[Data_Id],
	[Key_1],
	[RN],
	[Data_DeptName]
)
AS
(
	SELECT
		[d].[Id],
		[kd].[Key_1],
		CAST(0 AS BigInt),
		[d].[Name]
	FROM
		(
			SELECT DISTINCT
				[t1].[Key_1]
			FROM
				[CTE_1] [t1]
		) [kd]
			INNER JOIN [Department] [d] ON [d].[CompanyId] = [kd].[Key_1]
),
[CTE_3]
(
	[Key_1],
	[RN],
	[Data_Id],
	[Data_Name],
	[Data_DepartmentId],
	[Data_Salary]
)
AS
(
	SELECT
		[pd].[Id],
		ROW_NUMBER() OVER (ORDER BY [d_1].[Id]),
		[d_1].[Id],
		[d_1].[Name],
		[d_1].[DepartmentId],
		[d_1].[Salary]
	FROM
		(
			SELECT DISTINCT
				[t2].[Data_Id] as [Id]
			FROM
				[CTE_2] [t2]
		) [pd]
			INNER JOIN [Employee] [d_1] ON [d_1].[DepartmentId] = [pd].[Id]
),
[CTE_4]
(
	[Key_1],
	[RN],
	[Data_Id],
	[Data_Name],
	[Data_DepartmentId],
	[Data_Rate]
)
AS
(
	SELECT
		[pd_1].[Id],
		ROW_NUMBER() OVER (ORDER BY [d_2].[Id]),
		[d_2].[Id],
		[d_2].[Name],
		[d_2].[DepartmentId],
		[d_2].[Rate]
	FROM
		(
			SELECT DISTINCT
				[t3].[Data_Id] as [Id]
			FROM
				[CTE_2] [t3]
		) [pd_1]
			INNER JOIN [Contractor] [d_2] ON [d_2].[DepartmentId] = [pd_1].[Id]
),
[CTE_5]
(
	[Key_1],
	[RN],
	[Data_Id],
	[Data_Name],
	[Data_DepartmentId],
	[Data_School]
)
AS
(
	SELECT
		[pd_2].[Id],
		ROW_NUMBER() OVER (ORDER BY [d_3].[Id]),
		[d_3].[Id],
		[d_3].[Name],
		[d_3].[DepartmentId],
		[d_3].[School]
	FROM
		(
			SELECT DISTINCT
				[t4].[Data_Id] as [Id]
			FROM
				[CTE_2] [t4]
		) [pd_2]
			INNER JOIN [Intern] [d_3] ON [d_3].[DepartmentId] = [pd_2].[Id]
)
SELECT
	[t12].[Item1],
	[t12].[Item2],
	[t12].[Item3],
	[t12].[Item4],
	[t12].[Item5],
	[t12].[Item6],
	[t12].[Item7],
	[t12].[Item1_1],
	[t12].[Item2_1],
	[t12].[Item3_1]
FROM
	(
		SELECT
			[t10].[Item1],
			[t10].[Item2],
			[t10].[Item3],
			[t10].[Item4],
			[t10].[Item5],
			[t10].[Item6],
			[t10].[Item7],
			[t10].[Item1_1],
			NULL as [Item2_1],
			NULL as [Item3_1]
		FROM
			(
				SELECT
					[t8].[Item1],
					[t8].[Item2],
					[t8].[Item3],
					[t8].[Item4],
					[t8].[Item5],
					[t8].[Item6],
					[t8].[Item7],
					NULL as [Item1_1]
				FROM
					(
						SELECT
							CAST(0 AS Int) as [Item1],
							[t5].[Key_1] as [Item2],
							[t5].[RN] as [Item3],
							[t5].[Data_Id] as [Item4],
							[t5].[Data_DeptName] as [Item5],
							NULL as [Item6],
							NULL as [Item7]
						FROM
							[CTE_2] [t5]
						UNION ALL
						SELECT
							CAST(1 AS Int) as [Item1],
							[t6].[Key_1] as [Item2],
							[t6].[RN] as [Item3],
							[t6].[Data_Id] as [Item4],
							[t6].[Data_Name] as [Item5],
							[t6].[Data_DepartmentId] as [Item6],
							[t6].[Data_Salary] as [Item7]
						FROM
							[CTE_3] [t6]
						UNION ALL
						SELECT
							CAST(2 AS Int) as [Item1],
							[t7].[Key_1] as [Item2],
							[t7].[RN] as [Item3],
							[t7].[Data_Id] as [Item4],
							[t7].[Data_Name] as [Item5],
							[t7].[Data_DepartmentId] as [Item6],
							[t7].[Data_Rate] as [Item7]
						FROM
							[CTE_4] [t7]
					) [t8]
				UNION ALL
				SELECT
					CAST(3 AS Int) as [Item1],
					[t9].[Key_1] as [Item2],
					[t9].[RN] as [Item3],
					[t9].[Data_Id] as [Item4],
					[t9].[Data_Name] as [Item5],
					[t9].[Data_DepartmentId] as [Item6],
					NULL as [Item7],
					[t9].[Data_School] as [Item1_1]
				FROM
					[CTE_5] [t9]
			) [t10]
		UNION ALL
		SELECT
			CAST(4 AS Int) as [Item1],
			[t11].[Key_1] as [Item2],
			[t11].[RN] as [Item3],
			NULL as [Item4],
			NULL as [Item5],
			NULL as [Item6],
			NULL as [Item7],
			NULL as [Item1_1],
			[t11].[Key_1] as [Item2_1],
			[t11].[Data_Name] as [Item3_1]
		FROM
			[CTE_1] [t11]
	) [t12]
ORDER BY
	[t12].[Item1],
	[t12].[Item2],
	[t12].[Item3]

