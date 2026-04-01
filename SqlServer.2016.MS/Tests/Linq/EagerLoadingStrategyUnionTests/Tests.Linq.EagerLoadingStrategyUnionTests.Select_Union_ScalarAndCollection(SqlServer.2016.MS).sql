-- SqlServer.2016.MS SqlServer.2016

WITH [CTE_1] ([Key_1])
AS
(
	SELECT
		[cte_x].[Id]
	FROM
		[Company] [cte_x]
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
			INNER JOIN [Department] [d] ON [d].[CompanyId] = [kd].[Key_1]
)
SELECT
	[t3].[Item1],
	[t3].[Item2],
	[t3].[Item3],
	[t3].[Item4],
	[t3].[Item5],
	[t3].[Item6],
	[t3].[Item7],
	[t3].[Item1_1],
	[t3].[Item2_1],
	[t3].[Item3_1]
FROM
	(
		SELECT
			CAST(0 AS Int) as [Item1],
			[t2].[Key_1] as [Item2],
			[t2].[RN] as [Item3],
			[t2].[Data_Id] as [Item4],
			[t2].[Data_CompanyId] as [Item5],
			[t2].[Data_Name] as [Item6],
			[t2].[Data_IsActive] as [Item7],
			NULL as [Item1_1],
			NULL as [Item2_1],
			NULL as [Item3_1]
		FROM
			[CTE_2] [t2]
		UNION ALL
		SELECT
			CAST(1 AS Int) as [Item1],
			[c_1].[Id] as [Item2],
			CAST(0 AS BigInt) as [Item3],
			NULL as [Item4],
			NULL as [Item5],
			NULL as [Item6],
			NULL as [Item7],
			[c_1].[Id] as [Item1_1],
			[c_1].[Name] as [Item2_1],
			(
				SELECT
					COUNT(*)
				FROM
					[Department] [d_1]
				WHERE
					[d_1].[CompanyId] = [c_1].[Id]
			) as [Item3_1]
		FROM
			[Company] [c_1]
	) [t3]
ORDER BY
	[t3].[Item1],
	[t3].[Item2],
	[t3].[Item3]

