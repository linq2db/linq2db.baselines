-- SqlServer.2019
DECLARE @param Int -- Int32
SET     @param = 200
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'200'

INSERT INTO [DestinationTable]
(
	[Id],
	[Value],
	[ValueStr]
)
OUTPUT
	INSERTED.[Id],
	INSERTED.[Value],
	INSERTED.[ValueStr]
SELECT
	[s].[Id] + @param,
	[s].[Value] + @param,
	[s].[ValueStr] + @ValueStr
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

-- SqlServer.2019
DECLARE @param Int -- Int32
SET     @param = 200
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'200'

SELECT
	[s].[Id] + @param,
	[s].[Value] + @param,
	[s].[ValueStr] + @ValueStr
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

