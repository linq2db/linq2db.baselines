-- SqlServer.2012
DECLARE @param Int -- Int32
SET     @param = 100

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
	[s].[ValueStr] + CAST(@param AS NVarChar(11))
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3

-- SqlServer.2012
DECLARE @param Int -- Int32
SET     @param = 100

SELECT
	[s].[Id] + @param,
	[s].[Value] + @param,
	[s].[ValueStr] + CAST(@param AS NVarChar(11))
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3

