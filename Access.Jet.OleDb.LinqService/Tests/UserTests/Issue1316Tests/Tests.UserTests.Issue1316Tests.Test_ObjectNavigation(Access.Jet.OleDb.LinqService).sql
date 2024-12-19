BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue1316Tests]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Issue1316Tests]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_Issue1316Tests] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 5

INSERT INTO [Issue1316Tests]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 5

SELECT TOP 2
	[t1].[ID]
FROM
	[Issue1316Tests] [t1]
WHERE
	[t1].[ID] = @Id

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue1316Tests]

