-- SqlServer.2022.MS SqlServer.2022

SELECT
	[s].[Id],
	[s].[Value],
	[s].[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

-- SqlServer.2022.MS SqlServer.2022

DELETE [s]
OUTPUT
	DELETED.[Id] + 1,
	DELETED.[ValueStr] + N'1'
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

