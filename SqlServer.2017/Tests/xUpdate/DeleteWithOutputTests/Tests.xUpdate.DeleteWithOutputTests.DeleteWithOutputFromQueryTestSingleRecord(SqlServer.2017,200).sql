-- SqlServer.2017

SELECT
	[s].[Id],
	[s].[Value],
	[s].[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3

-- SqlServer.2017
DECLARE @param Int -- Int32
SET     @param = 200
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'200'

DELETE [s]
OUTPUT
	DELETED.[Id] + @param,
	DELETED.[Value] + @param,
	DELETED.[ValueStr] + @ValueStr
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3

