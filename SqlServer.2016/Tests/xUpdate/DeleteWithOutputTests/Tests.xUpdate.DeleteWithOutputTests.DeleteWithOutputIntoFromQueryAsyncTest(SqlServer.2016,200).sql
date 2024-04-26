BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [TableWithData]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[TableWithData]', N'U') IS NULL)
	CREATE TABLE [TableWithData]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2016

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
-- SqlServer.2016

DROP TABLE IF EXISTS [DestinationTable]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[DestinationTable]', N'U') IS NULL)
	CREATE TABLE [DestinationTable]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2016

SELECT
	[s].[Id],
	[s].[Value],
	[s].[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

BeforeExecute
-- SqlServer.2016 (asynchronously)
DECLARE @param Int -- Int32
SET     @param = 200

DELETE [s]
OUTPUT
	DELETED.[Id] + @param,
	DELETED.[Value] + @param,
	DELETED.[ValueStr] + CAST(@param AS VarChar(11))
INTO [DestinationTable]
(
	[Id],
	[Value],
	[ValueStr]
)
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[DestinationTable] [t1]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [DestinationTable]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [TableWithData]

