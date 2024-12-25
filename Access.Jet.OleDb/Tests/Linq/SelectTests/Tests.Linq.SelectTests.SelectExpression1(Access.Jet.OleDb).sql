BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [SelectExpressionTable]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [SelectExpressionTable]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_SelectExpressionTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 1

INSERT INTO [SelectExpressionTable]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	1 = 1
FROM
	[SelectExpressionTable] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [SelectExpressionTable]

