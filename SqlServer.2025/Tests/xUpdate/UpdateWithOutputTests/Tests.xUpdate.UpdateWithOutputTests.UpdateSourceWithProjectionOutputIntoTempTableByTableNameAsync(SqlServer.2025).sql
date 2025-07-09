BeforeExecute
-- SqlServer.2025 SqlServer.2022

CREATE TABLE [tempdb]..[#DestinationTable_destination]
(
	[Id]       Int          NOT NULL,
	[Value]    Int          NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

UPDATE
	[TableWithData_source]
SET
	[Id] = [TableWithData_source].[Id],
	[Value] = [TableWithData_source].[Value] + 1,
	[ValueStr] = [TableWithData_source].[ValueStr] + N'Upd'
OUTPUT
	INSERTED.[Id],
	DELETED.[Value],
	INSERTED.[ValueStr]
INTO [tempdb]..[#DestinationTable_destination]
(
	[Id],
	[Value],
	[ValueStr]
)
WHERE
	[TableWithData_source].[Id] > 3

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[tempdb]..[#DestinationTable_destination] [t1]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#DestinationTable_destination]

