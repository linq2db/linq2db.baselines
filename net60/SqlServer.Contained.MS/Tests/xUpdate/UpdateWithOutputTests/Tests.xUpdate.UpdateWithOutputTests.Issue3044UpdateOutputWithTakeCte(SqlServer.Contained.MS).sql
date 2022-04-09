BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [TableWithData]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[TableWithData]', N'U') IS NULL)
	CREATE TABLE [TableWithData]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

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
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

WITH [CTE_1] ([Id], [Value], [ValueStr])
AS
(
	SELECT
		[t1].[Id],
		[t1].[Value_1],
		[t1].[ValueStr]
	FROM
		(
			SELECT TOP (@take)
				[i].[Id],
				[i].[Value] as [Value_1],
				[i].[ValueStr]
			FROM
				[TableWithData] [i]
			WHERE
				[i].[Id] >= 7
			ORDER BY
				[i].[Id]
		) [t1]
)
UPDATE
	[t2]
SET
	[t2].[Id] = 20,
	[t2].[Value] = [t2].[Value],
	[t2].[ValueStr] = [t2].[ValueStr]
OUTPUT
	[DELETED].[Id],
	[DELETED].[Value],
	[DELETED].[ValueStr],
	[INSERTED].[Id],
	[INSERTED].[Value],
	[INSERTED].[ValueStr]
FROM
	[CTE_1] [t2]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [TableWithData]

