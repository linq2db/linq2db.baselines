-- SqlServer.2016.MS SqlServer.2016

SELECT
	[s].[Id],
	[s].[Value],
	[s].[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

-- SqlServer.2016.MS SqlServer.2016
DECLARE @param Int -- Int32
SET     @param = 100
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'100'

DELETE [s]
OUTPUT
	DELETED.[Id] + @param,
	DELETED.[Value] + @param,
	DELETED.[ValueStr] + @ValueStr
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

