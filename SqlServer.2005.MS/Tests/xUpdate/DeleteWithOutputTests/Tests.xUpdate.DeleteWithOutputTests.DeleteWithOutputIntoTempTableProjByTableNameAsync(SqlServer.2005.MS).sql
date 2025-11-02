-- SqlServer.2005.MS SqlServer.2005

CREATE TABLE [tempdb]..[#DestinationTable_target]
(
	[Id]       Int          NOT NULL,
	[Value]    Int          NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[s].[Id],
	[s].[Value],
	[s].[ValueStr]
FROM
	[TableWithData_source] [s]
WHERE
	[s].[Id] > 3

-- SqlServer.2005.MS SqlServer.2005
DECLARE @param Int -- Int32
SET     @param = 100500

DELETE [s]
OUTPUT
	DELETED.[Id] + @param,
	DELETED.[Value] + @param,
	DELETED.[ValueStr] + CAST(@param AS NVarChar(11))
INTO [tempdb]..[#DestinationTable_target]
(
	[Id],
	[Value],
	[ValueStr]
)
FROM
	[TableWithData_source] [s]
WHERE
	[s].[Id] > 3

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[tempdb]..[#DestinationTable_target] [t1]

-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#DestinationTable_target]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#DestinationTable_target]

