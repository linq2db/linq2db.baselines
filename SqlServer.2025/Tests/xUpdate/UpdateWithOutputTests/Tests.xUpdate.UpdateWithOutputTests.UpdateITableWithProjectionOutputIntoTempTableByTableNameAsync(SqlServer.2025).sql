﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

CREATE TABLE [tempdb]..[#TableWithData_destination]
(
	[Id]       Int          NOT NULL,
	[Value]    Int          NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

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
INTO [tempdb]..[#TableWithData_destination]
(
	[Id],
	[Value],
	[ValueStr]
)
FROM
	[TableWithData_source] [s]
		INNER JOIN [DestinationTable_target] [t] ON [t].[Id] = [s].[Id]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[tempdb]..[#TableWithData_destination] [t1]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#TableWithData_destination]

