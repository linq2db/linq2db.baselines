BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[s].[Id],
	[s].[Value],
	[s].[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3

BeforeExecute
-- SqlServer.SA SqlServer.2019

DELETE [s]
OUTPUT
	DELETED.[Id],
	DELETED.[Value],
	DELETED.[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3

