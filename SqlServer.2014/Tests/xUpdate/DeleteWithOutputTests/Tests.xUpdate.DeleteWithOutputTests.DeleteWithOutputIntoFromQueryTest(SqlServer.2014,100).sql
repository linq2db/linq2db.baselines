-- SqlServer.2014
SELECT
	[s].[Id],
	[s].[Value],
	[s].[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

-- SqlServer.2014
DECLARE @param Int -- Int32
SET     @param = 100
DECLARE @param_1 NVarChar(50) -- String
SET     @param_1 = N'100'

DELETE [s]
OUTPUT
	DELETED.[Id] + @param,
	DELETED.[Value] + @param,
	Coalesce(DELETED.[ValueStr], N'') + Coalesce(@param_1, N'')
INTO [DestinationTable]
(
	[Id],
	[Value],
	[ValueStr]
)
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

-- SqlServer.2014
SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[DestinationTable] [t1]

