-- SqlServer.2017.MS SqlServer.2017

SELECT
	[r].[Id],
	[r].[IntHolder],
	[r].[LongHolder]
FROM
	[HolderTable] [r]
WHERE
	[r].[IntHolder] + 3 = 5 AND [r].[LongHolder] + 3 = 5

