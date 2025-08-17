BeforeExecute
-- SqlServer.2019 (asynchronously)

SELECT
	[s].[Id],
	[s].[Value],
	[s].[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3

BeforeExecute
-- SqlServer.2019 (asynchronously)

DELETE [s]
OUTPUT
	DELETED.[Id],
	DELETED.[Value],
	DELETED.[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3

