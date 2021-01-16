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
DECLARE @p_1 Guid
SET     @p_1 = '{b3d9b51c-89f9-442a-893b-cd8a6f667d37}'
DECLARE @p_2 Guid
SET     @p_2 = '{61efdcd4-659d-41e8-910c-506a9c2f31c5}'

SELECT TOP 1
	@p_1,
	@p_2
FROM
	[SelectExpressionTable] [_]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [SelectExpressionTable]

