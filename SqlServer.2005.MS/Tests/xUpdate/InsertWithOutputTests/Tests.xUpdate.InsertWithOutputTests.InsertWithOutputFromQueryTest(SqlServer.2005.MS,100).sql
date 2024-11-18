BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TableWithData]', N'U') IS NOT NULL)
	DROP TABLE [TableWithData]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TableWithData]', N'U') IS NULL)
	CREATE TABLE [TableWithData]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [TableWithData]
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

IF (OBJECT_ID(N'[DestinationTable]', N'U') IS NOT NULL)
	DROP TABLE [DestinationTable]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[DestinationTable]', N'U') IS NULL)
	CREATE TABLE [DestinationTable]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @param Int -- Int32
SET     @param = 100
DECLARE @param_1 Int -- Int32
SET     @param_1 = 100

INSERT INTO [DestinationTable]
(
	[Id],
	[Value],
	[ValueStr]
)
OUTPUT
	INSERTED.[Id],
	INSERTED.[Value],
	INSERTED.[ValueStr]
SELECT
	[s].[Id] + @param,
	[s].[Value] + @param,
	[s].[ValueStr] + CAST(@param_1 AS VarChar(11))
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @param Int -- Int32
SET     @param = 100
DECLARE @param_1 Int -- Int32
SET     @param_1 = 100

SELECT
	[s].[Id] + @param,
	[s].[Value] + @param,
	[s].[ValueStr] + CAST(@param_1 AS VarChar(11))
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[DestinationTable]', N'U') IS NOT NULL)
	DROP TABLE [DestinationTable]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TableWithData]', N'U') IS NOT NULL)
	DROP TABLE [TableWithData]

