-- SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take)
	[x].[Id]
FROM
	[NullsTable] [x]
ORDER BY
	IIF([x].[Value] IS NULL, 1, 0),
	[x].[Value],
	[x].[Id]

-- SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take)
	[x].[Id]
FROM
	[NullsTable] [x]
ORDER BY
	IIF([x].[Value] IS NULL, 1, 0),
	[x].[Value],
	[x].[Id]

