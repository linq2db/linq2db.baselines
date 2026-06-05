-- SqlServer.2025.MS SqlServer.2025
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
	IIF([t1].[Value] IS NULL, 0, 1),
	[t1].[Value] DESC,
	[t1].[Id]

-- SqlServer.2025.MS SqlServer.2025

SELECT
	[t1].[Id],
	[t1].[Grp],
	[t1].[Value]
FROM
	[NullsTable] [t1]

