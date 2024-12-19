BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue681Table]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Issue681Table]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_Issue681Table] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 5

DELETE FROM
	[Issue681Table] [t1]
WHERE
	[t1].[ID] = @ID

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue681Table]

