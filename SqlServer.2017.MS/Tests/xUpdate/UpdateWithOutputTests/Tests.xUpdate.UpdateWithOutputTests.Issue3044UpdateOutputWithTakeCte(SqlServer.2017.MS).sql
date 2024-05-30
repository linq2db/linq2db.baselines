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
DECLARE @take Int -- Int32
SET     @take = 1

WITH [CTE_1] ([Value_1], [ValueStr], [Id])
AS
(
	SELECT TOP (@take)
		[i].[Value],
		[i].[ValueStr],
		[i].[Id]
	FROM
		[TableWithData] [i]
	WHERE
		[i].[Id] = 7
	ORDER BY
		[i].[Id]
)
UPDATE
	[CTE_1]
SET
	[Value_1] = 20,
	[ValueStr] = [CTE_1].[ValueStr]
OUTPUT
	DELETED.[Id],
	DELETED.[Value_1],
	DELETED.[ValueStr],
	INSERTED.[Id],
	INSERTED.[Value_1],
	INSERTED.[ValueStr]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [TableWithData]

