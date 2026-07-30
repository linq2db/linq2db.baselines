-- SqlServer.2025
DECLARE @param Int -- Int32
SET     @param = 100
DECLARE @param_1 NVarChar(50) -- String
SET     @param_1 = N'100'

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
	Coalesce([s].[ValueStr], N'') || Coalesce(@param_1, N'')
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3

-- SqlServer.2025
DECLARE @param Int -- Int32
SET     @param = 100
DECLARE @param_1 NVarChar(50) -- String
SET     @param_1 = N'100'

SELECT
	[s].[Id] + @param,
	[s].[Value] + @param,
	Coalesce([s].[ValueStr], N'') || Coalesce(@param_1, N'')
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3

