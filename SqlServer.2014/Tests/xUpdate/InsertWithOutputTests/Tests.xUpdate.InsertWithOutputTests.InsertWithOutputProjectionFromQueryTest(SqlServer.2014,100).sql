﻿BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[TableWithData]', N'U') IS NOT NULL)
	DROP TABLE [TableWithData]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[TableWithData]', N'U') IS NULL)
	CREATE TABLE [TableWithData]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2014

INSERT INTO [TableWithData]
(
	[Id],
	[Value],
	[ValueStr]
)
VALUES
(1,-1,N'Str1'),
(2,-2,N'Str2'),
(3,-3,N'Str3'),
(4,-4,N'Str4'),
(5,-5,N'Str5'),
(6,-6,N'Str6'),
(7,-7,N'Str7'),
(8,-8,N'Str8'),
(9,-9,N'Str9'),
(10,-10,N'Str10')

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[DestinationTable]', N'U') IS NOT NULL)
	DROP TABLE [DestinationTable]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[DestinationTable]', N'U') IS NULL)
	CREATE TABLE [DestinationTable]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2014
DECLARE @param Int -- Int32
SET     @param = 100

INSERT INTO [DestinationTable]
(
	[Id],
	[Value],
	[ValueStr]
)
OUTPUT
	[INSERTED].[Id] + 1,
	[INSERTED].[ValueStr] + Convert(VarChar(11), 1)
SELECT
	[s].[Id] + 100 + @param,
	[s].[Value] + 100,
	[s].[ValueStr] + Convert(VarChar(11), 100)
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[DestinationTable] [t1]

BeforeExecute
-- SqlServer.2014

SELECT
	[t].[Id] + 1,
	[t].[ValueStr] + Convert(VarChar(11), 1)
FROM
	[DestinationTable] [t]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[DestinationTable]', N'U') IS NOT NULL)
	DROP TABLE [DestinationTable]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[TableWithData]', N'U') IS NOT NULL)
	DROP TABLE [TableWithData]

