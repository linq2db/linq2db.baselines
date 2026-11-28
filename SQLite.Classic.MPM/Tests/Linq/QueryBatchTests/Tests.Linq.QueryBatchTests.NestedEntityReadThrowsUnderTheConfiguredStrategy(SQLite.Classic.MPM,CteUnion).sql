-- SQLite.Classic.MPM SQLite.Classic SQLite
WITH [CTE_1]
(
	[Detail_Id],
	[Detail_Item_Id],
	[Detail_Item_Value],
	[Detail_Item_GroupId],
	[Detail_Item_Name],
	[field],
	[Key_1]
)
AS
(
	SELECT
		[d].[Id],
		[t1].[Id],
		[t1].[Value_1],
		[t1].[GroupId],
		[t1].[Name],
		ROW_NUMBER() OVER (ORDER BY [d].[Id]),
		0
	FROM
		[BatchGroup] [d]
			LEFT JOIN (
				SELECT
					[i].[Id],
					[i].[Value] as [Value_1],
					[i].[GroupId],
					[i].[Name],
					ROW_NUMBER() OVER (PARTITION BY [i].[GroupId] ORDER BY [i].[GroupId]) as [rn]
				FROM
					[BatchItem] [i]
				WHERE
					[i].[Id] > 8
			) [t1] ON [t1].[GroupId] = [d].[Id] AND [t1].[rn] = 1
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
				COUNT(*)
			FROM
				[BatchItem] [t2]
		)
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
			[t3].[Detail_Item_Id] as [Item5],
			[t3].[Detail_Item_Value] as [Item6],
			[t3].[Detail_Item_GroupId] as [Item7],
			[t3].[Detail_Item_Name] as [Item1_1]
		FROM
			[CTE_1] [t3]
		UNION ALL
		SELECT
			CAST(1 AS INTEGER) as [Item1],
			[t4].[field] as [Item3],
			CAST(0 AS INTEGER) as [Item2],
			[t4].[Item1] as [Item4],
			NULL as [Item5],
			NULL as [Item6],
			NULL as [Item7],
			NULL as [Item1_1]
		FROM
			[CTE_2] [t4]
	) [t5]
ORDER BY
	[t5].[Item1],
	[t5].[Item3],
	[t5].[Item2]

