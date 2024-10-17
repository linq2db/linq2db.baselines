BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Batch]', N'U') IS NOT NULL)
	DROP TABLE [Batch]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Batch]', N'U') IS NULL)
	CREATE TABLE [Batch]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_Batch] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Batch]
(
	[Id],
	[Value]
)
SELECT 1,N'V1' UNION ALL
SELECT 2,N'V2' UNION ALL
SELECT 3,N'V3'

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Confirmation]', N'U') IS NOT NULL)
	DROP TABLE [Confirmation]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Confirmation]', N'U') IS NULL)
	CREATE TABLE [Confirmation]
	(
		[BatchId] Int      NOT NULL,
		[Date]    DateTime NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Confirmation]
(
	[BatchId],
	[Date]
)
SELECT 1,CAST('2019-04-09T14:30:00.000' AS DATETIME) UNION ALL
SELECT 2,CAST('2019-04-09T14:30:20.000' AS DATETIME) UNION ALL
SELECT 2,CAST('2019-04-09T14:30:25.000' AS DATETIME) UNION ALL
SELECT 3,CAST('2019-04-09T14:30:35.000' AS DATETIME)

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Date_1],
	[t1].[Value_1]
FROM
	(
		SELECT TOP (2)
			[x].[Id],
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
	[t1].[Id]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Confirmation]', N'U') IS NOT NULL)
	DROP TABLE [Confirmation]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Batch]', N'U') IS NOT NULL)
	DROP TABLE [Batch]

