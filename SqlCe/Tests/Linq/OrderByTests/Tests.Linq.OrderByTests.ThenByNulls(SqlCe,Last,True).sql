-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take)
	[t1].[Id],
	[t1].[Grp],
	[t1].[Value] as [Value_1]
FROM
	[NullsTable] [t1]
ORDER BY
	[t1].[Grp],
	[t1].[Value] DESC,
	[t1].[Id]

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Grp],
	[t1].[Value] as [Value_1]
FROM
	[NullsTable] [t1]

