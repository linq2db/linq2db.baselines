﻿BeforeExecute
-- SqlServer.2017

SELECT
	[s].[Id],
	[s].[Value],
	[s].[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

BeforeExecute
-- SqlServer.2017
DECLARE @param Int -- Int32
SET     @param = 100

DELETE [s]
OUTPUT
	DELETED.[Id] + @param,
	DELETED.[Value] + @param,
	DELETED.[ValueStr] + CAST(@param AS NVarChar(11))
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

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[DestinationTable] [t1]

