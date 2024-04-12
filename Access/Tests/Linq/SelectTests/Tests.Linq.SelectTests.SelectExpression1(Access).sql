BeforeExecute
-- Access AccessOleDb

DROP TABLE [SelectExpressionTable]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [SelectExpressionTable]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_SelectExpressionTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access AccessOleDb
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
-- Access AccessOleDb

SELECT TOP 1
	IIF(1 = 1, True, False)
FROM
	[SelectExpressionTable] [_]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [SelectExpressionTable]

