-- SQLite.Classic.MPU SQLite.Classic SQLite

WITH [CTE_1]
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
		0
	FROM
		[Company] [d]
	ORDER BY
		[d].[Id]
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
		[d_1].[Id],
		[d_1].[CompanyId],
		[d_1].[Name],
		[d_1].[IsActive],
		ROW_NUMBER() OVER (ORDER BY [d_1].[Id]),
		0
	FROM
		[Department] [d_1]
	ORDER BY
		[d_1].[Id]
)
SELECT
	[t3].[Item1],
	[t3].[Item2],
	[t3].[Item3],
	[t3].[Item4],
	[t3].[Item5],
	[t3].[Item6],
	[t3].[Item7]
FROM
	(
		SELECT
			CAST(0 AS INTEGER) as [Item1],
			[t1].[field_1] as [Item3],
			[t1].[Key_1] as [Item2],
			[t1].[Detail_Id] as [Item4],
			[t1].[Detail_Name] as [Item5],
			NULL as [Item6],
			NULL as [Item7]
		FROM
			[CTE_1] [t1]
		UNION ALL
		SELECT
			CAST(1 AS INTEGER) as [Item1],
			[t2].[field_1] as [Item3],
			[t2].[Key_1] as [Item2],
			[t2].[Detail_Id] as [Item4],
			[t2].[Detail_Name] as [Item5],
			[t2].[Detail_CompanyId] as [Item6],
			[t2].[Detail_IsActive] as [Item7]
		FROM
			[CTE_2] [t2]
	) [t3]
ORDER BY
	[t3].[Item1],
	[t3].[Item3],
	[t3].[Item2]

