-- SqlServer.SA.MS SqlServer.2019
SELECT
	[s].[Id],
	[s].[Value],
	[s].[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

-- SqlServer.SA.MS SqlServer.2019
DECLARE @param Int -- Int32
SET     @param = 100500
DECLARE @param_1 NVarChar(50) -- String
SET     @param_1 = N'100500'

DELETE [s]
OUTPUT
	DELETED.[Id] + @param,
	DELETED.[Value] + @param,
	Coalesce(DELETED.[ValueStr], N'') + Coalesce(@param_1, N'')
INTO [tempdb]..[#DestinationTable]
(
	[Id],
	[Value],
	[ValueStr]
)
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

-- SqlServer.SA.MS SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[tempdb]..[#DestinationTable] [t1]

