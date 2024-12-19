BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue2815Table1]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[Issue2815Table1]', N'U') IS NULL)
	CREATE TABLE [Issue2815Table1]
	(
		[SRC_BIC]       Int NOT NULL,
		[DES_BIC]       Int NOT NULL,
		[IDF]           Int NOT NULL,
		[TREA_CENT]     Int NOT NULL,
		[NOT_HANDLED]   Int NOT NULL,
		[TRANS_CHANNEL] Int     NULL
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue2815Table2]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[Issue2815Table2]', N'U') IS NULL)
	CREATE TABLE [Issue2815Table2]
	(
		[ISO]  Int NOT NULL,
		[SEPA] Bit NOT NULL
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue2815Table3]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[Issue2815Table3]', N'U') IS NULL)
	CREATE TABLE [Issue2815Table3]
	(
		[TreasuryCenter] Int NOT NULL,
		[BIC]            Int NOT NULL,
		[Sepa]           Int NOT NULL,
		[Trans_Channel]  Int NOT NULL,
		[Idf]            Int NOT NULL
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

UPDATE
	[ext]
SET
	[ext].[TRANS_CHANNEL] = Coalesce([channel].[Trans_Channel], 0),
	[ext].[IDF] = [channel].[Idf]
FROM
	[Issue2815Table1] [ext]
		LEFT JOIN [Issue2815Table2] [source] ON [source].[ISO] = [ext].[SRC_BIC]
		LEFT JOIN [Issue2815Table2] [destination] ON [destination].[ISO] = [ext].[DES_BIC]
		LEFT JOIN [Issue2815Table3] [channel] ON [channel].[TreasuryCenter] = [ext].[TREA_CENT] AND [channel].[BIC] = [ext].[SRC_BIC] AND [channel].[Sepa] = IIF([source].[SEPA] = 1 AND [destination].[SEPA] = 1, IIF([source].[ISO] = [destination].[ISO] OR [source].[ISO] IS NULL AND [destination].[ISO] IS NULL, 0, 1), 2)
WHERE
	[ext].[NOT_HANDLED] = 2 AND [ext].[TRANS_CHANNEL] IS NULL

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue2815Table3]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue2815Table2]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue2815Table1]

