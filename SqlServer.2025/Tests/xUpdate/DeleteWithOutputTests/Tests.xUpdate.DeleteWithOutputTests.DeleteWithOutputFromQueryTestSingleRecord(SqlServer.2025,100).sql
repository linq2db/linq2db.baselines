BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[s].[Id],
	[s].[Value],
	[s].[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3

BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @param Int -- Int32
SET     @param = 100

DELETE [s]
OUTPUT
	DELETED.[Id] + @param,
	DELETED.[Value] + @param,
	DELETED.[ValueStr] + CAST(@param AS VarChar(11))
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3

