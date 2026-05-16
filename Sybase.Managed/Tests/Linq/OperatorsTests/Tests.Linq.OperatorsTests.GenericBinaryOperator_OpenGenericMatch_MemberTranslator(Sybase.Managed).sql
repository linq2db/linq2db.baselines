-- Sybase.Managed Sybase

SELECT
	[r].[Id],
	[r].[IntHolder],
	[r].[LongHolder]
FROM
	[HolderTable] [r]
WHERE
	[r].[IntHolder] + 3 = 5 AND [r].[LongHolder] + 3 = 5

