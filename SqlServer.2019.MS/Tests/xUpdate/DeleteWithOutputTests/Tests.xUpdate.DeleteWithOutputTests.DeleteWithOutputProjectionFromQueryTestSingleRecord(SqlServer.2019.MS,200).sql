-- SqlServer.2019.MS SqlServer.2019

SELECT
	[s].[Id],
	[s].[Value],
	[s].[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3

-- SqlServer.2019.MS SqlServer.2019

DELETE [s]
OUTPUT
	DELETED.[Id] + 1,
	DELETED.[ValueStr] + CAST(1 AS NVarChar(11)),
	IIF(DELETED.[ValueStr] IS NOT NULL, 1, 0)
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3

