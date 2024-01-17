BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [testparams]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [testparams]
(
	[from] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @from Int -- Int32
SET     @from = 2

UPDATE
	[testparams] [t]
SET
	[t].[from] = ?
WHERE
	[t].[from] = 1

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [testparams]

