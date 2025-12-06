-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [tempdb]..[#TableWithData_output]
(
	[Id]       Int          NOT NULL,
	[Value]    Int          NOT NULL,
	[ValueStr] NVarChar(50)     NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [TableWithData_source]
(
	[Value],
	[Id],
	[ValueStr]
)
OUTPUT
	INSERTED.[Id],
	INSERTED.[Value],
	INSERTED.[ValueStr]
INTO [tempdb]..[#TableWithData_output]
(
	[Id],
	[Value],
	[ValueStr]
)
VALUES
(
	42123,
	42,
	N'SomeStr'
)

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[TableWithData_source] [t1]

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[tempdb]..[#TableWithData_output] [t1]

-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#TableWithData_output]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#TableWithData_output]

