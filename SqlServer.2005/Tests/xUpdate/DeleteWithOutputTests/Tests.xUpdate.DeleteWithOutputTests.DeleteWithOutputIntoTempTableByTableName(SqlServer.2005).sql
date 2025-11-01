-- SqlServer.2005

CREATE TABLE [tempdb]..[#TableWithData_target]
(
	[Id]       Int          NOT NULL,
	[Value]    Int          NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

-- SqlServer.2005

SELECT
	[s].[Id],
	[s].[Value],
	[s].[ValueStr]
FROM
	[TableWithData_source] [s]
WHERE
	[s].[Id] > 3

-- SqlServer.2005

DELETE [s]
OUTPUT
	DELETED.[Id],
	DELETED.[Value],
	DELETED.[ValueStr]
INTO [tempdb]..[#TableWithData_target]
(
	[Id],
	[Value],
	[ValueStr]
)
FROM
	[TableWithData_source] [s]
WHERE
	[s].[Id] > 3

-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[tempdb]..[#TableWithData_target] [t1]

-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#TableWithData_target]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#TableWithData_target]

