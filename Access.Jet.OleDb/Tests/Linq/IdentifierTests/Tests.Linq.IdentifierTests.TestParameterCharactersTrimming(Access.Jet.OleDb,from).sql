BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [testparams]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [testparams]
(
	[from] Int NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @from Integer -- Int32
SET     @from = 2

UPDATE
	[testparams] [t]
SET
	[t].[from] = @from
WHERE
	[t].[from] = 1

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [testparams]

