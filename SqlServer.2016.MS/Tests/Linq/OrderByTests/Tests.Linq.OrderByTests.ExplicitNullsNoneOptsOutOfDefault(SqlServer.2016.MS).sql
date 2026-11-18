-- SqlServer.2016.MS SqlServer.2016
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take)
	[x].[Id]
FROM
	[NullsTable] [x]
ORDER BY
	[x].[Value],
	[x].[Id]

-- SqlServer.2016.MS SqlServer.2016
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take)
	[x].[Id]
FROM
	[NullsTable] [x]
ORDER BY
	[x].[Value],
	[x].[Id]

