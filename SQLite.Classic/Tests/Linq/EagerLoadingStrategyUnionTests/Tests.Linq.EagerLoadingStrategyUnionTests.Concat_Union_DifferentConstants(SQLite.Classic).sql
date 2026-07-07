-- SQLite.Classic SQLite

WITH [CTE_1]
(
	[set_col_1__],
	[field],
	[Label],
	[Name]
)
AS MATERIALIZED
(
	SELECT
		[t1].[Id],
		ROW_NUMBER() OVER (ORDER BY [t1].[Id]),
		[t1].[Label],
		[t1].[Name]
	FROM
		(
			SELECT
				CAST('Small' AS NVarChar(255)) as [Label],
				[c_1].[Id],
				[c_1].[Name]
			FROM
				[Company] [c_1]
			UNION ALL
			SELECT
				CAST('Large' AS NVarChar(255)) as [Label],
				[c_2].[Id],
				[c_2].[Name]
			FROM
				[Company] [c_2]
		) [t1]
),
[CTE_2]
(
	[Detail_Id],
	[Detail_CompanyId],
	[Detail_Name],
	[Detail_IsActive],
	[field],
	[Key_1]
)
AS
(
	SELECT
		[d].[Id],
		[d].[CompanyId],
		[d].[Name],
		[d].[IsActive],
		ROW_NUMBER() OVER (ORDER BY [d].[Id]),
		[kd].[v0__set_col_1__]
	FROM
		(
			SELECT DISTINCT
				[t2].[set_col_1__] as [v0__set_col_1__]
			FROM
				[CTE_1] [t2]
		) [kd]
			INNER JOIN [Department] [d] ON [kd].[v0__set_col_1__] = [d].[CompanyId]
	ORDER BY
		[d].[Id]
)
SELECT
	[t5].[Item1],
	[t5].[Item2],
	[t5].[Item3],
	[t5].[Item4],
	[t5].[Item5],
	[t5].[Item6],
	[t5].[Item7],
	[t5].[Item1_1]
FROM
	(
		SELECT
			CAST(0 AS INTEGER) as [Item1],
			[t3].[field] as [Item3],
			[t3].[Key_1] as [Item2],
			[t3].[Detail_Id] as [Item4],
			[t3].[Detail_CompanyId] as [Item5],
			[t3].[Detail_Name] as [Item6],
			[t3].[Detail_IsActive] as [Item7],
			NULL as [Item1_1]
		FROM
			[CTE_2] [t3]
		UNION ALL
		SELECT
			CAST(1 AS INTEGER) as [Item1],
			[t4].[field] as [Item3],
			[t4].[set_col_1__] as [Item2],
			[t4].[set_col_1__] as [Item4],
			[t4].[set_col_1__] as [Item5],
			[t4].[Label] as [Item6],
			NULL as [Item7],
			[t4].[Name] as [Item1_1]
		FROM
			[CTE_1] [t4]
	) [t5]
ORDER BY
	[t5].[Item1],
	[t5].[Item3],
	[t5].[Item2]

