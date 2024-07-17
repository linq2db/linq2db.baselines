BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Issue3757Level1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Issue3757Level1]', N'U') IS NULL)
	CREATE TABLE [Issue3757Level1]
	(
		[ID]     Int            NOT NULL,
		[ValS]   NVarChar(4000)     NULL,
		[ValB]   Bit                NULL,
		[ValInt] Int                NULL,

		CONSTRAINT [PK_Issue3757Level1] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Issue3757Level2]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Issue3757Level2]', N'U') IS NULL)
	CREATE TABLE [Issue3757Level2]
	(
		[ID]       Int            NOT NULL,
		[ParentId] Int            NOT NULL,
		[ValS]     NVarChar(4000)     NULL,
		[ValB]     Bit                NULL,
		[ValInt]   Int                NULL,

		CONSTRAINT [PK_Issue3757Level2] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[m_1].[ID],
	[m_1].[ValS],
	[d].[ID],
	[d].[ValB],
	[d].[ValInt]
FROM
	[Issue3757Level1] [m_1]
		INNER JOIN [Issue3757Level2] [d] ON [m_1].[ID] = [d].[ParentId]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[l1].[ID],
	[l1].[ValB],
	[l1].[ValS],
	[l1].[ValInt]
FROM
	[Issue3757Level1] [l1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Issue3757Level2]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Issue3757Level1]

