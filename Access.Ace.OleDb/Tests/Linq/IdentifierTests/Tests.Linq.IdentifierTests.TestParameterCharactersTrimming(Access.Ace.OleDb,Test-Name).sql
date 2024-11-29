BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [testparams]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [testparams]
(
	[Test-Name] Int NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @TestName Integer -- Int32
SET     @TestName = 2

UPDATE
	[testparams] [t]
SET
	[t].[Test-Name] = @TestName
WHERE
	[t].[Test-Name] = 1

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [testparams]

