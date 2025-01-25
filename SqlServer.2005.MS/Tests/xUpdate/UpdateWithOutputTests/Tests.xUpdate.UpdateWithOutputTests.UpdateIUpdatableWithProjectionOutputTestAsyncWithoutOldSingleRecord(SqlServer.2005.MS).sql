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
SELECT 9,-9,N'Str9'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

UPDATE
	[TableWithData]
SET
	[Value] = [TableWithData].[Value] + 1,
	[ValueStr] = [TableWithData].[ValueStr] + N'Upd'
OUTPUT
	INSERTED.[Value]
WHERE
	[TableWithData].[Id] = 3

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TableWithData]', N'U') IS NOT NULL)
	DROP TABLE [TableWithData]

