-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 1
	[i].[Id],
	[i].[Value],
	[i].[GroupId],
	[i].[Name]
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] > 100
ORDER BY
	[i].[Id]

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
	(
		SELECT TOP 1
			[i].[Id]
		FROM
			[BatchItem] [i]
		WHERE
			[i].[Id] > 100
		ORDER BY
			[i].[Id]
	)

