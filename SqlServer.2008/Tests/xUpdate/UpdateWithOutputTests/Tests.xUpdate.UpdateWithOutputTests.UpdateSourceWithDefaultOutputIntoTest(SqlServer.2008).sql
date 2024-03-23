BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TableWithData]', N'U') IS NOT NULL)
	DROP TABLE [TableWithData]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TableWithData]', N'U') IS NULL)
	CREATE TABLE [TableWithData]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2008

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
-- SqlServer.2008

IF (OBJECT_ID(N'[destination]', N'U') IS NOT NULL)
	DROP TABLE [destination]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[destination]', N'U') IS NULL)
	CREATE TABLE [destination]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2008

UPDATE
	[TableWithData]
SET
	[Id] = [TableWithData].[Id],
	[Value] = [TableWithData].[Value] + 1,
	[ValueStr] = [TableWithData].[ValueStr] + N'Upd'
OUTPUT
	INSERTED.[Id],
	INSERTED.[Value],
	INSERTED.[ValueStr]
INTO [destination]
(
	[Id],
	[Value],
	[ValueStr]
)
WHERE
	[TableWithData].[Id] > 3

BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[destination] [t1]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[destination]', N'U') IS NOT NULL)
	DROP TABLE [destination]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TableWithData]', N'U') IS NOT NULL)
	DROP TABLE [TableWithData]

