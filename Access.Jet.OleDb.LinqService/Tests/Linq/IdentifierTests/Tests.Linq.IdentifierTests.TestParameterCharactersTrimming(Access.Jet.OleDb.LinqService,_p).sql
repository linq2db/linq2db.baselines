BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [testparams]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [testparams]
(
	[_p] Int NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 2

UPDATE
	[testparams] [t]
SET
	[t].[_p] = @p
WHERE
	[t].[_p] = 1

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [testparams]

