﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

UPDATE
	[t]
SET
	[t].[Id] = [s].[Id],
	[t].[Value] = [s].[Value],
	[t].[ValueStr] = [s].[ValueStr]
OUTPUT
	[s].[Id],
	DELETED.[Value],
	INSERTED.[ValueStr]
INTO [Destination]
(
	[Id],
	[Value],
	[ValueStr]
)
FROM
	[TableWithData] [s]
		INNER JOIN [DestinationTable] [t] ON [t].[Id] = [s].[Id]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[Destination] [t1]

