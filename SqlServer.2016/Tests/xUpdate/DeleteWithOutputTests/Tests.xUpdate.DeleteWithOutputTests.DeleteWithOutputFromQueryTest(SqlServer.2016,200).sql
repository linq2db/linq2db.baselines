-- SqlServer.2016
SELECT
	[s].[Id],
	[s].[Value],
	[s].[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

-- SqlServer.2016
DECLARE @param Int -- Int32
SET     @param = 200
DECLARE @param_1 NVarChar(50) -- String
SET     @param_1 = N'200'

DELETE [s]
OUTPUT
	DELETED.[Id] + @param,
	DELETED.[Value] + @param,
	Coalesce(DELETED.[ValueStr], N'') + Coalesce(@param_1, N'')
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

