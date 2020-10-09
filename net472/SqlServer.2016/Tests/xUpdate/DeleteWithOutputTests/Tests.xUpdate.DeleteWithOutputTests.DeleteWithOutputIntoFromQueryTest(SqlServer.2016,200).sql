BeforeExecute
-- SqlServer.2016 SqlServer.2012

CREATE TABLE [TableWithData]
(
	[Id]       Int          NOT NULL,
	[Value]    Int          NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SqlServer.2016 SqlServer.2012

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
-- SqlServer.2016 SqlServer.2012

CREATE TABLE [DestinationTable]
(
	[Id]       Int          NOT NULL,
	[Value]    Int          NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT 
	[s].[Id], 
	[s].[Value], 
	[s].[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @param Int -- Int32
SET     @param = 200
DECLARE @param_1 Int -- Int32
SET     @param_1 = 200
DECLARE @param_2 Int -- Int32
SET     @param_2 = 200

DELETE [s]
OUTPUT
	[DELETED].[Id] + @param,
	[DELETED].[Value] + @param_1,
	[DELETED].[ValueStr] + Convert(VarChar(100), @param_2)
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
-- SqlServer.2016 SqlServer.2012

SELECT 
	[t1].[Id], 
	[t1].[Value], 
	[t1].[ValueStr]
FROM
	[DestinationTable] [t1]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

DROP TABLE [DestinationTable]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

DROP TABLE [TableWithData]

