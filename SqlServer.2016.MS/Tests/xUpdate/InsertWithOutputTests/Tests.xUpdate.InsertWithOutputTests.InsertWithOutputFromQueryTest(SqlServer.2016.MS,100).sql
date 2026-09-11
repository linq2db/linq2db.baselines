-- SqlServer.2016.MS SqlServer.2016
DECLARE @param Int -- Int32
SET     @param = 100
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'100'

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
	Coalesce([s].[ValueStr], N'') + Coalesce(@ValueStr, N'')
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

-- SqlServer.2016.MS SqlServer.2016
DECLARE @param Int -- Int32
SET     @param = 100
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'100'

SELECT
	[s].[Id] + @param,
	[s].[Value] + @param,
	Coalesce([s].[ValueStr], N'') + Coalesce(@ValueStr, N'')
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

