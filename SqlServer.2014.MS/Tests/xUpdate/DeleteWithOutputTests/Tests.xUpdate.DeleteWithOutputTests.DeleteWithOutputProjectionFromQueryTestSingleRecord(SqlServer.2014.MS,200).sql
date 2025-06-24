BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[s].[Id],
	[s].[Value],
	[s].[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

DELETE [s]
OUTPUT
	DELETED.[Id] + 1,
	DELETED.[ValueStr] + CAST(1 AS NVarChar(11)),
	IIF(DELETED.[ValueStr] IS NOT NULL, 1, 0)
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3

