-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 1
	[i].[Id]
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] > 100

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[GroupId],
	[t1].[Name]
FROM
	[BatchItem] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Item1],
	[t1].[Item1_1]
FROM
	(
		SELECT
			1 as [c1]
	) [t2]
		LEFT JOIN (
			SELECT TOP 1
				1 as [Item1],
				[i].[Id] as [Item1_1]
			FROM
				[BatchItem] [i]
			WHERE
				[i].[Id] > 100
		) [t1] ON 1=1

