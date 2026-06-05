-- SqlServer.2016
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take)
	[t1].[Id],
	[t1].[Grp],
	[t1].[Value]
FROM
	[NullsTable] [t1]
ORDER BY
	[t1].[Grp],
	[t1].[Value],
	[t1].[Id]

-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Grp],
	[t1].[Value]
FROM
	[NullsTable] [t1]

