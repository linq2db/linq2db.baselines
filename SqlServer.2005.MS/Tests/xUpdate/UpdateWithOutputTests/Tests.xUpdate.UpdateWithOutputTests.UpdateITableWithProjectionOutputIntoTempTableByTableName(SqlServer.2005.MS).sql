BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TableWithData_source]', N'U') IS NOT NULL)
	DROP TABLE [TableWithData_source]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TableWithData_source]', N'U') IS NULL)
	CREATE TABLE [TableWithData_source]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [TableWithData_source]
(
	[Id],
	[Value],
	[ValueStr]
)
SELECT 1,-1,N'Str1' UNION ALL
SELECT 2,-2,N'Str2' UNION ALL
SELECT 3,-3,N'Str3' UNION ALL
SELECT 4,-4,N'Str4' UNION ALL
SELECT 5,-5,N'Str5' UNION ALL
SELECT 6,-6,N'Str6' UNION ALL
SELECT 7,-7,N'Str7' UNION ALL
SELECT 8,-8,N'Str8' UNION ALL
SELECT 9,-9,N'Str9'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[DestinationTable_target]', N'U') IS NOT NULL)
	DROP TABLE [DestinationTable_target]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[DestinationTable_target]', N'U') IS NULL)
	CREATE TABLE [DestinationTable_target]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [DestinationTable_target]
(
	[Id],
	[Value],
	[ValueStr]
)
SELECT 1,0,N'0Dst' UNION ALL
SELECT 2,-1,N'-1Dst' UNION ALL
SELECT 3,-2,N'-2Dst' UNION ALL
SELECT 4,-3,N'-3Dst' UNION ALL
SELECT 5,-4,N'-4Dst' UNION ALL
SELECT 6,-5,N'-5Dst' UNION ALL
SELECT 7,-6,N'-6Dst' UNION ALL
SELECT 8,-7,N'-7Dst' UNION ALL
SELECT 9,-8,N'-8Dst'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

CREATE TABLE [tempdb]..[#TableWithData_destination]
(
	[Id]       Int          NOT NULL,
	[Value]    Int          NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

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
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[tempdb]..[#TableWithData_destination] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#TableWithData_destination]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#TableWithData_destination]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[DestinationTable_target]', N'U') IS NOT NULL)
	DROP TABLE [DestinationTable_target]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TableWithData_source]', N'U') IS NOT NULL)
	DROP TABLE [TableWithData_source]

