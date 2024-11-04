BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [testparams]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [testparams]
(
	[TestИмя] Int NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Test Integer -- Int32
SET     @Test = 2

UPDATE
	[testparams] [t]
SET
	[t].[TestИмя] = @Test
WHERE
	[t].[TestИмя] = 1

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [testparams]

