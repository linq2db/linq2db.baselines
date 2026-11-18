-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[i].[Value],
	[i].[Id]
FROM
	[Item] [i]
ORDER BY
	[i].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[k_1].[item],
	[d].[Id],
	[d].[ItemId],
	[d].[Log]
FROM
	(VALUES
		(1), (2)
	) [k_1]([item])
		INNER JOIN [ItemLog] [d] ON ([k_1].[item] = [d].[ItemId])
ORDER BY
	[d].[Id] DESC

