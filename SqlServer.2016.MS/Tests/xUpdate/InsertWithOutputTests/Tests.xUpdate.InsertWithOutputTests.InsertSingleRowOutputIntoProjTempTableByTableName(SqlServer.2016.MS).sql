BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

CREATE TABLE [tempdb]..[#DestinationTable_output]
(
	[Id]       Int          NOT NULL,
	[Value]    Int          NOT NULL,
	[ValueStr] NVarChar(50)     NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

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

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[TableWithData_source] [t1]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[tempdb]..[#DestinationTable_output] [t1]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#DestinationTable_output]

