BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Data]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Data]', N'U') IS NULL)
	CREATE TABLE [Data]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

INSERT INTO [Data]
(
	[Id]
)
VALUES
(1),
(2),
(3)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [SubData1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[SubData1]', N'U') IS NULL)
	CREATE TABLE [SubData1]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

INSERT INTO [SubData1]
(
	[Id]
)
VALUES
(2),
(3)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [SubData2]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[SubData2]', N'U') IS NULL)
	CREATE TABLE [SubData2]
	(
		[Id]     Int            NOT NULL,
		[Reason] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

INSERT INTO [SubData2]
(
	[Id],
	[Reason]
)
VALUES
(3,N'прст1'),
(3,N'прст2')

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[i].[Id],
	[t1].[Reason],
	[t1].[is_empty]
FROM
	[Data] [i]
		LEFT JOIN [SubData1] [a_SubData] ON [i].[Id] = [a_SubData].[Id]
		OUTER APPLY (
			SELECT TOP (@take)
				[s].[Reason],
				1 as [is_empty]
			FROM
				[SubData2] [s]
			WHERE
				[a_SubData].[Id] = [s].[Id]
		) [t1]
ORDER BY
	[i].[Id]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [SubData2]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [SubData1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Data]

