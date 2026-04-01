-- SqlServer.2022

WITH [CTE_1] ([Key_1])
AS
(
	SELECT
		[cte_x].[Id]
	FROM
		[Company] [cte_x]
	UNION ALL
	SELECT
		[c_1].[Id]
	FROM
		[Company] [c_1]
),
[CTE_2]
(
	[Key_1],
	[RN],
	[Data_Id],
	[Data_CompanyId],
	[Data_Name],
	[Data_IsActive]
)
AS
(
	SELECT
		[kd].[Key_1],
		ROW_NUMBER() OVER (ORDER BY [d].[Id]),
		[d].[Id],
		[d].[CompanyId],
		[d].[Name],
		[d].[IsActive]
	FROM
		(
			SELECT DISTINCT
				[t1].[Key_1]
			FROM
				[CTE_1] [t1]
		) [kd]
			INNER JOIN [Department] [d] ON [kd].[Key_1] = [d].[CompanyId]
	WHERE
		[d].[IsActive] = 1
),
[CTE_3]
(
	[Key_1],
	[RN],
	[Data_Id],
	[Data_CompanyId],
	[Data_Name],
	[Data_IsActive]
)
AS
(
	SELECT
		[kd_1].[Key_1],
		ROW_NUMBER() OVER (ORDER BY [d_1].[Id]),
		[d_1].[Id],
		[d_1].[CompanyId],
		[d_1].[Name],
		[d_1].[IsActive]
	FROM
		(
			SELECT DISTINCT
				[t2].[Key_1]
			FROM
				[CTE_1] [t2]
		) [kd_1]
			INNER JOIN [Department] [d_1] ON [kd_1].[Key_1] = [d_1].[CompanyId]
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
			[t5].[Item1],
			[t5].[Item2],
			[t5].[Item3],
			[t5].[Item4],
			[t5].[Item5],
			[t5].[Item6],
			[t5].[Item7],
			NULL as [Item1_1],
			NULL as [Item2_1],
			NULL as [Item3_1]
		FROM
			(
				SELECT
					CAST(0 AS Int) as [Item1],
					[t3].[Key_1] as [Item2],
					[t3].[RN] as [Item3],
					[t3].[Data_Id] as [Item4],
					[t3].[Data_CompanyId] as [Item5],
					[t3].[Data_Name] as [Item6],
					[t3].[Data_IsActive] as [Item7]
				FROM
					[CTE_2] [t3]
				UNION ALL
				SELECT
					CAST(1 AS Int) as [Item1],
					[t4].[Key_1] as [Item2],
					[t4].[RN] as [Item3],
					[t4].[Data_Id] as [Item4],
					[t4].[Data_CompanyId] as [Item5],
					[t4].[Data_Name] as [Item6],
					[t4].[Data_IsActive] as [Item7]
				FROM
					[CTE_3] [t4]
			) [t5]
		UNION ALL
		SELECT
			CAST(2 AS Int) as [Item1],
			[t6].[Item2],
			CAST(0 AS BigInt) as [Item3],
			NULL as [Item4],
			NULL as [Item5],
			NULL as [Item6],
			NULL as [Item7],
			[t6].[Item1] as [Item1_1],
			[t6].[Item2] as [Item2_1],
			IIF([t6].[Item1] = N'ActiveOnly', 1, 0) as [Item3_1]
		FROM
			(
				SELECT
					CAST(N'ActiveOnly' AS NVarChar(4000)) as [Item1],
					[p_setop].[Id] as [Item2]
				FROM
					[Company] [p_setop]
				UNION ALL
				SELECT
					CAST(N'All' AS NVarChar(4000)) as [Item1],
					[c_2].[Id] as [Item2]
				FROM
					[Company] [c_2]
			) [t6]
	) [t7]
ORDER BY
	[t7].[Item1],
	[t7].[Item2],
	[t7].[Item3]

