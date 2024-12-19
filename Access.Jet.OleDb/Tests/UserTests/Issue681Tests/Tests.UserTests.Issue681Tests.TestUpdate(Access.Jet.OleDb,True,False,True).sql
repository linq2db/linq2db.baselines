BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue681Table]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Issue681Table]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_Issue681Table] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Value Integer -- Int32
SET     @Value = 10
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	[Issue681Table] [t1]
SET
	[t1].[Value] = @Value
WHERE
	[t1].[ID] = @ID

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue681Table]

