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
SELECT 9,-9,N'Str9' UNION ALL
SELECT 10,-10,N'Str10'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

CREATE TABLE [tempdb]..[#TableWithData_target]
(
	[Id]       Int          NOT NULL,
	[Value]    Int          NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[s].[Id],
	[s].[Value],
	[s].[ValueStr]
FROM
	[TableWithData_source] [s]
WHERE
	[s].[Id] > 3

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

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

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[tempdb]..[#TableWithData_target] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#TableWithData_target]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#TableWithData_target]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TableWithData_source]', N'U') IS NOT NULL)
	DROP TABLE [TableWithData_source]

