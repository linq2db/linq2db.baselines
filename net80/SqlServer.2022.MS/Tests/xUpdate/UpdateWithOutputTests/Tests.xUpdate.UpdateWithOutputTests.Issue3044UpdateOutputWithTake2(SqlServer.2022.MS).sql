BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [TableWithData]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[TableWithData]', N'U') IS NULL)
	CREATE TABLE [TableWithData]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

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
-- SqlServer.2022.MS SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 1

UPDATE
	[t1]
SET
	[t1].[Id] = 20,
	[t1].[ValueStr] = [t1].[ValueStr]
OUTPUT
	[DELETED].[Id],
	NULL /* Value */,
	[DELETED].[ValueStr],
	[INSERTED].[Id],
	NULL /* Value */,
	[INSERTED].[ValueStr]
FROM
	(
		SELECT TOP (@take)
			[i].[Id],
			[i].[ValueStr]
		FROM
			[TableWithData] [i]
		WHERE
			[i].[Id] >= 7
		ORDER BY
			[i].[Id]
	) [t1]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [TableWithData]

