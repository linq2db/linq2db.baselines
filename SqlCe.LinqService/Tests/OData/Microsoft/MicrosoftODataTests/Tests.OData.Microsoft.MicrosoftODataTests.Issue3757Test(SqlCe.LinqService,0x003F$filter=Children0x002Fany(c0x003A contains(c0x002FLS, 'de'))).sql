BeforeExecute
-- SqlCe

DROP TABLE [Issue3757Level1]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue3757Level1]
(
	[ID]     Int           NOT NULL,
	[ValS]   NVarChar(255)     NULL,
	[ValB]   Bit               NULL,
	[ValInt] Int               NULL,

	CONSTRAINT [PK_Issue3757Level1] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe

DROP TABLE [Issue3757Level2]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue3757Level2]
(
	[ID]       Int           NOT NULL,
	[ParentId] Int           NOT NULL,
	[ValS]     NVarChar(255)     NULL,
	[ValB]     Bit               NULL,
	[ValInt]   Int               NULL,

	CONSTRAINT [PK_Issue3757Level2] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe
DECLARE @TypedProperty NVarChar(4) -- String
SET     @TypedProperty = '%de%'

SELECT
	[m_1].[ID],
	[m_1].[ValS],
	[d].[ID] as [Id_1],
	[d].[ValB] as [LB],
	[d].[ValInt] as [LI]
FROM
	(
		SELECT DISTINCT
			[l1].[ID],
			[l1].[ValS]
		FROM
			[Issue3757Level1] [l1]
		WHERE
			EXISTS(
				SELECT
					1
				FROM
					[Issue3757Level2] [c_1]
				WHERE
					[l1].[ID] = [c_1].[ParentId] AND [l1].[ValS] LIKE @TypedProperty ESCAPE '~' AND
					[l1].[ValS] IS NOT NULL
			)
	) [m_1]
		INNER JOIN [Issue3757Level2] [d] ON [m_1].[ID] = [d].[ParentId]

BeforeExecute
-- SqlCe
DECLARE @TypedProperty NVarChar(4) -- String
SET     @TypedProperty = '%de%'

SELECT
	[it].[ID],
	[it].[ValB],
	[it].[ValS],
	[it].[ValInt]
FROM
	[Issue3757Level1] [it]
WHERE
	EXISTS(
		SELECT
			1
		FROM
			[Issue3757Level2] [c_1]
		WHERE
			[it].[ID] = [c_1].[ParentId] AND [it].[ValS] LIKE @TypedProperty ESCAPE '~' AND
			[it].[ValS] IS NOT NULL
	)

BeforeExecute
-- SqlCe

DROP TABLE [Issue3757Level2]

BeforeExecute
-- SqlCe

DROP TABLE [Issue3757Level1]

