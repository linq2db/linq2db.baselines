-- SqlServer.2016

WITH [CTE_1]
(
	[Key_Item1],
	[Key_Item2],
	[RN],
	[Data_Name]
)
AS
(
	SELECT
		[cte_x].[Id],
		[cte_x].[CompanyId],
		ROW_NUMBER() OVER (ORDER BY [cte_x].[Id], [cte_x].[CompanyId]),
		[cte_x].[Name]
	FROM
		[Department] [cte_x]
),
[CTE_2]
(
	[Key_Item1],
	[Key_Item2],
	[RN],
	[Data_Id],
	[Data_DepartmentId],
	[Data_Name],
	[Data_Salary]
)
AS
(
	SELECT
		[kd].[Item1],
		[kd].[Item2],
		ROW_NUMBER() OVER (ORDER BY [d].[Id]),
		[d].[Id],
		[d].[DepartmentId],
		[d].[Name],
		[d].[Salary]
	FROM
		(
			SELECT DISTINCT
				[t1].[Key_Item1] as [Item1],
				[t1].[Key_Item2] as [Item2]
			FROM
				[CTE_1] [t1]
		) [kd]
			INNER JOIN [Employee] [d] ON [d].[DepartmentId] = [kd].[Item1] OR [d].[DepartmentId] = [kd].[Item2]
)
SELECT
	[t4].[Item1],
	[t4].[Item3],
	[t4].[Item4],
	[t4].[Item5],
	[t4].[Item6],
	[t4].[Item7],
	[t4].[Item1_2],
	[t4].[Item2_1],
	[t4].[Item3_1],
	[t4].[Item1_1],
	[t4].[Item2]
FROM
	(
		SELECT
			CAST(0 AS Int) as [Item1],
			[t2].[Key_Item1] as [Item1_1],
			[t2].[Key_Item2] as [Item2],
			[t2].[RN] as [Item3],
			[t2].[Data_Id] as [Item4],
			[t2].[Data_DepartmentId] as [Item5],
			[t2].[Data_Name] as [Item6],
			[t2].[Data_Salary] as [Item7],
			NULL as [Item1_2],
			NULL as [Item2_1],
			NULL as [Item3_1]
		FROM
			[CTE_2] [t2]
		UNION ALL
		SELECT
			CAST(1 AS Int) as [Item1],
			[t3].[Key_Item1] as [Item1_1],
			[t3].[Key_Item2] as [Item2],
			[t3].[RN] as [Item3],
			NULL as [Item4],
			NULL as [Item5],
			NULL as [Item6],
			NULL as [Item7],
			[t3].[Key_Item1] as [Item1_2],
			[t3].[Key_Item2] as [Item2_1],
			[t3].[Data_Name] as [Item3_1]
		FROM
			[CTE_1] [t3]
	) [t4]
ORDER BY
	[t4].[Item1],
	[t4].[Item1_1],
	[t4].[Item2],
	[t4].[Item3]

