-- SqlServer.2012

SELECT
	[s].[Id],
	[s].[Value],
	[s].[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

-- SqlServer.2012
DECLARE @param Int -- Int32
SET     @param = 100

DELETE [s]
OUTPUT
	DELETED.[Id] + @param,
	DELETED.[Value] + @param,
	DELETED.[ValueStr] + CAST(@param AS NVarChar(11))
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

