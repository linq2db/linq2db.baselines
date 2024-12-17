BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Issue3757Level1]

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

DROP TABLE IF EXISTS [Issue3757Level2]

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022
DECLARE @TypedProperty NVarChar(4000) -- String
SET     @TypedProperty = N'%de%'

SELECT
	[m_1].[ID],
	[m_1].[ValS],
	[d].[ID],
	[d].[ValB],
	[d].[ValInt]
FROM
	(
		SELECT DISTINCT
			[l1].[ID],
			[l1].[ValS]
		FROM
			[Issue3757Level1] [l1]
		WHERE
			 EXISTS (
				SELECT
					*
				FROM
					[Issue3757Level2] [c_1]
				WHERE
					[l1].[ID] = [c_1].[ParentId] AND [l1].[ValS] LIKE @TypedProperty ESCAPE N'~' AND
					[l1].[ValS] IS NOT NULL
			)
	) [m_1]
		INNER JOIN [Issue3757Level2] [d] ON [m_1].[ID] = [d].[ParentId]

BeforeExecute
-- SqlServer.2022
DECLARE @TypedProperty NVarChar(4000) -- String
SET     @TypedProperty = N'%de%'

SELECT
	[it].[ID],
	[it].[ValB],
	[it].[ValS],
	[it].[ValInt]
FROM
	[Issue3757Level1] [it]
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			[Issue3757Level2] [c_1]
		WHERE
			[it].[ID] = [c_1].[ParentId] AND [it].[ValS] LIKE @TypedProperty ESCAPE N'~' AND
			[it].[ValS] IS NOT NULL
	)

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Issue3757Level2]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Issue3757Level1]

