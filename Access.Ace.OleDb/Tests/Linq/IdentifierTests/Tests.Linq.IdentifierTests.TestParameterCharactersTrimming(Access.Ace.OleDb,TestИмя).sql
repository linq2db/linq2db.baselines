BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [testparams]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [testparams]
(
	[TestИмя] Int NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Test Integer -- Int32
SET     @Test = 2

UPDATE
	[testparams] [t]
SET
	[t].[TestИмя] = @Test
WHERE
	[t].[TestИмя] = 1

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [testparams]

