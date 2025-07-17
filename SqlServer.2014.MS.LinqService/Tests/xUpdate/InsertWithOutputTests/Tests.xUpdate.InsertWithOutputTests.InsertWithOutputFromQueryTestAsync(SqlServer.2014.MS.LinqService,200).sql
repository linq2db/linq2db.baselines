BeforeExecute
-- SqlServer.2014.MS SqlServer.2014 (asynchronously)
DECLARE @param Int -- Int32
SET     @param = 200

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
	[s].[Id] > 3

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @param Int -- Int32
SET     @param = 200

SELECT
	[s].[Id] + @param,
	[s].[Value] + @param,
	[s].[ValueStr] + CAST(@param AS NVarChar(11))
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

