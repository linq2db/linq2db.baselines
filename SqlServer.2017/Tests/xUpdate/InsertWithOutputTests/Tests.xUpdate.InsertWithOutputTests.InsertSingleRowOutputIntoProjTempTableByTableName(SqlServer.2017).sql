-- SqlServer.2017

CREATE TABLE [tempdb]..[#DestinationTable_output]
(
	[Id]       Int          NOT NULL,
	[Value]    Int          NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

-- SqlServer.2017

INSERT INTO [TableWithData_source]
(
	[Value],
	[Id],
	[ValueStr]
)
OUTPUT
	INSERTED.[Value] * 2,
	INSERTED.[Id] + 1,
	N'Foo' + INSERTED.[ValueStr]
INTO [tempdb]..[#DestinationTable_output]
(
	[Value],
	[Id],
	[ValueStr]
)
VALUES
(
	42123,
	42,
	N'SomeStr'
)

-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[TableWithData_source] [t1]

-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[tempdb]..[#DestinationTable_output] [t1]

-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#DestinationTable_output]

