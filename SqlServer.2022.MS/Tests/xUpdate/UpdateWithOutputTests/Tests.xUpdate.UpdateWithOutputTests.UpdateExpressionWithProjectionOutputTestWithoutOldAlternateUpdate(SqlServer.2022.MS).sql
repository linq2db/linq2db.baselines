﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

UPDATE
	[t]
SET
	[t].[Id] = [s].[Id],
	[t].[Value] = [s].[Value],
	[t].[ValueStr] = [s].[ValueStr]
OUTPUT
	INSERTED.[Value]
FROM
	[TableWithData] [s]
		INNER JOIN [DestinationTable] [t] ON [t].[Id] = [s].[Id]

