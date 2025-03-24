﻿BeforeExecute
--  SqlServer.2014.MS SqlServer.2014 (asynchronously)

UPDATE
	[t]
SET
	[t].[Id] = [s].[Id],
	[t].[Value] = [s].[Value],
	[t].[ValueStr] = [s].[ValueStr]
OUTPUT
	DELETED.[Id],
	DELETED.[Value],
	DELETED.[ValueStr],
	INSERTED.[Id],
	INSERTED.[Value],
	INSERTED.[ValueStr]
FROM
	[TableWithData] [s]
		INNER JOIN [DestinationTable] [t] ON [t].[Id] = [s].[Id]

