BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [testparams]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [testparams]
(
	[p_p] Int NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @p_p Integer -- Int32
SET     @p_p = 2

UPDATE
	[testparams] [t]
SET
	[t].[p_p] = @p_p
WHERE
	[t].[p_p] = 1

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [testparams]

