BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [TableWithData]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[TableWithData]', N'U') IS NULL)
	CREATE TABLE [TableWithData]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

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
(9,-9,N'Str9')

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [DestinationTable]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[DestinationTable]', N'U') IS NULL)
	CREATE TABLE [DestinationTable]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

INSERT INTO [DestinationTable]
(
	[Id],
	[Value],
	[ValueStr]
)
VALUES
(1,0,N'0Dst'),
(2,-1,N'-1Dst'),
(3,-2,N'-2Dst'),
(4,-3,N'-3Dst'),
(5,-4,N'-4Dst'),
(6,-5,N'-5Dst'),
(7,-6,N'-6Dst'),
(8,-7,N'-7Dst'),
(9,-8,N'-8Dst')

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

UPDATE
	[t]
SET
	[t].[Id] = [t1].[Id],
	[t].[Value] = [t1].[Value],
	[t].[ValueStr] = [t1].[ValueStr]
OUTPUT
	DELETED.[Value],
	INSERTED.[Value]
FROM
	[TableWithData] [t1]
		INNER JOIN [DestinationTable] [t] ON [t].[Id] = [t1].[Id]
WHERE
	[t1].[Id] = 3

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [DestinationTable]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [TableWithData]

