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
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlCe

SELECT
	[m_1].[ID],
	[m_1].[ValS],
	[d].[ID] as [Id_1],
	[d].[ValB] as [LB],
	[d].[ValInt] as [LI]
FROM
	[Issue3757Level1] [m_1]
		INNER JOIN [Issue3757Level2] [d] ON [m_1].[ID] = [d].[ParentId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlCe

SELECT
	[l1].[ID],
	[l1].[ValB],
	[l1].[ValS],
	[l1].[ValInt]
FROM
	[Issue3757Level1] [l1]

BeforeExecute
-- SqlCe

DROP TABLE [Issue3757Level2]

BeforeExecute
-- SqlCe

DROP TABLE [Issue3757Level1]

