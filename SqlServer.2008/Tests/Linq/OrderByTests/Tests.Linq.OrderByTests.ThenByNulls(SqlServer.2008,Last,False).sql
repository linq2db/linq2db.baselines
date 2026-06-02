-- SqlServer.2008
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
	CASE
		WHEN [t1].[Value] IS NULL THEN 1
		ELSE 0
	END,
	[t1].[Value],
	[t1].[Id]

-- SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Grp],
	[t1].[Value]
FROM
	[NullsTable] [t1]

