BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [SelectExpressionTable]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [SelectExpressionTable]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_SelectExpressionTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [SelectExpressionTable]

