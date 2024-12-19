BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue3757Level1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Issue3757Level1]
(
	[ID]     Int           NOT NULL,
	[ValS]   NVarChar(255)     NULL,
	[ValB]   Bit               NULL,
	[ValInt] Int               NULL,

	CONSTRAINT [PK_Issue3757Level1] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue3757Level2]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Issue3757Level2]
(
	[ID]       Int           NOT NULL,
	[ParentId] Int           NOT NULL,
	[ValS]     NVarChar(255)     NULL,
	[ValB]     Bit               NULL,
	[ValInt]   Int               NULL,

	CONSTRAINT [PK_Issue3757Level2] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[m_1].[ID],
	[m_1].[ValS],
	[d].[ID],
	[d].[ValB],
	[d].[ValInt]
FROM
	[Issue3757Level1] [m_1]
		INNER JOIN [Issue3757Level2] [d] ON ([m_1].[ID] = [d].[ParentId])

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[l1].[ID],
	[l1].[ValB],
	[l1].[ValS],
	[l1].[ValInt]
FROM
	[Issue3757Level1] [l1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue3757Level2]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue3757Level1]

