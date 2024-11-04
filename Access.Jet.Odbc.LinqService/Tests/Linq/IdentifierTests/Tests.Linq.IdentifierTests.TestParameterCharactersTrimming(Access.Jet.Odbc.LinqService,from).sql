BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [testparams]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [testparams]
(
	[from] Int NOT NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @from  -- Int32
SET     @from = 2

UPDATE
	[testparams] [t]
SET
	[t].[from] = ?
WHERE
	[t].[from] = 1

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [testparams]

