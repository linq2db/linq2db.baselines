BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[s].[Id],
	[s].[Value],
	[s].[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

DELETE [s]
OUTPUT
	DELETED.[Id],
	DELETED.[Value],
	DELETED.[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

