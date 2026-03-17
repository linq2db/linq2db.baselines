-- SqlServer.2005

CREATE TABLE [tempdb]..[#TableWithData_destination]
(
	[Id]       Int          NOT NULL,
	[Value]    Int          NOT NULL,
	[ValueStr] NVarChar(50)     NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

-- SqlServer.2005

UPDATE
	[TableWithData_source]
SET
	[Value] = [TableWithData_source].[Value] + 1,
	[ValueStr] = [TableWithData_source].[ValueStr] + N'Upd'
OUTPUT
	INSERTED.[Id],
	INSERTED.[Value],
	INSERTED.[ValueStr]
INTO [tempdb]..[#TableWithData_destination]
(
	[Id],
	[Value],
	[ValueStr]
)
WHERE
	[TableWithData_source].[Id] > 3

-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[tempdb]..[#TableWithData_destination] [t1]

-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#TableWithData_destination]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#TableWithData_destination]

