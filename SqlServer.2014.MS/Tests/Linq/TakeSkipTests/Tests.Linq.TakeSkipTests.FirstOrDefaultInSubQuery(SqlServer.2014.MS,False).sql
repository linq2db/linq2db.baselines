BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Batch]', N'U') IS NOT NULL)
	DROP TABLE [Batch]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Batch]', N'U') IS NULL)
	CREATE TABLE [Batch]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_Batch] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

INSERT INTO [Batch]
(
	[Id],
	[Value]
)
VALUES
(1,N'V1'),
(2,N'V2'),
(3,N'V3')

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Confirmation]', N'U') IS NOT NULL)
	DROP TABLE [Confirmation]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Confirmation]', N'U') IS NULL)
	CREATE TABLE [Confirmation]
	(
		[BatchId] Int       NOT NULL,
		[Date]    DateTime2 NOT NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

INSERT INTO [Confirmation]
(
	[BatchId],
	[Date]
)
VALUES
(1,DATETIME2FROMPARTS(2019, 4, 9, 14, 30, 0, 0, 7)),
(2,DATETIME2FROMPARTS(2019, 4, 9, 14, 30, 20, 0, 7)),
(2,DATETIME2FROMPARTS(2019, 4, 9, 14, 30, 25, 0, 7)),
(3,DATETIME2FROMPARTS(2019, 4, 9, 14, 30, 35, 0, 7))

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[BatchId],
	[t1].[Date_1],
	[t1].[Value_1]
FROM
	(
		SELECT TOP (2)
			[x].[Id] as [BatchId],
			(
				SELECT TOP (1)
					[a_Confirmations].[Date]
				FROM
					[Confirmation] [a_Confirmations]
				WHERE
					[x].[Id] = [a_Confirmations].[BatchId]
			) as [Date_1],
			[x].[Value] as [Value_1]
		FROM
			[Batch] [x]
		ORDER BY
			[x].[Id] DESC
	) [t1]
ORDER BY
	[t1].[BatchId]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Confirmation]', N'U') IS NOT NULL)
	DROP TABLE [Confirmation]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Batch]', N'U') IS NOT NULL)
	DROP TABLE [Batch]

