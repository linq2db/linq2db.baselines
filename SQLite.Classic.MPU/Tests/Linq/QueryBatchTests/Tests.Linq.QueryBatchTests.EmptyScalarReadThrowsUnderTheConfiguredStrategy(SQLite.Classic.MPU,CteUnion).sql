-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[i].[Id]
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] > 100
LIMIT 1

-- SQLite.Classic.MPU SQLite.Classic SQLite
WITH [CTE_1] ([Detail_Id], [Key_1], [field])
AS MATERIALIZED
(
	SELECT
		[d].[Id],
		0,
		ROW_NUMBER() OVER (ORDER BY [d].[Id])
	FROM
		[BatchGroup] [d]
	ORDER BY
		[d].[Id]
),
[CTE_2] ([field], [Item1])
AS
(
	SELECT
		0,
		(
			SELECT
				[i].[Id]
			FROM
				[BatchItem] [i]
			WHERE
				[i].[Id] > 100
			LIMIT 1
		)
),
[CTE_3]
(
	[Detail_Id],
	[Detail_Value],
	[Detail_GroupId],
	[Detail_Name],
	[field],
	[Key_1]
)
AS
(
	SELECT
		[nd].[Id],
		[nd].[Value],
		[nd].[GroupId],
		[nd].[Name],
		0,
		[pd].[v0Detail_Id]
	FROM
		(
			SELECT DISTINCT
				[t1].[Detail_Id] as [v0Detail_Id]
			FROM
				[CTE_1] [t1]
		) [pd]
			INNER JOIN [BatchItem] [nd] ON [nd].[GroupId] = [pd].[v0Detail_Id]
)
SELECT
	[t5].[Item1],
	[t5].[Item2],
	[t5].[Item3],
	[t5].[Item4],
	[t5].[Item5],
	[t5].[Item6],
	[t5].[Item7]
FROM
	(
		SELECT
			CAST(0 AS INTEGER) as [Item1],
			[t2].[field] as [Item3],
			[t2].[Key_1] as [Item2],
			[t2].[Detail_Id] as [Item4],
			NULL as [Item5],
			NULL as [Item6],
			NULL as [Item7]
		FROM
			[CTE_1] [t2]
		UNION ALL
		SELECT
			CAST(1 AS INTEGER) as [Item1],
			[t3].[field] as [Item3],
			[t3].[Key_1] as [Item2],
			[t3].[Detail_Id] as [Item4],
			[t3].[Detail_Value] as [Item5],
			[t3].[Detail_GroupId] as [Item6],
			[t3].[Detail_Name] as [Item7]
		FROM
			[CTE_3] [t3]
		UNION ALL
		SELECT
			CAST(2 AS INTEGER) as [Item1],
			[t4].[field] as [Item3],
			CAST(0 AS INTEGER) as [Item2],
			[t4].[Item1] as [Item4],
			NULL as [Item5],
			NULL as [Item6],
			NULL as [Item7]
		FROM
			[CTE_2] [t4]
	) [t5]
ORDER BY
	[t5].[Item1],
	[t5].[Item3],
	[t5].[Item2]

