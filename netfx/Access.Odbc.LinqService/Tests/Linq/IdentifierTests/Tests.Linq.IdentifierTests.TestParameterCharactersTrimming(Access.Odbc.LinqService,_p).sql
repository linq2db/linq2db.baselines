BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [testparams]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [testparams]
(
	[_p] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @_p Int -- Int32
SET     @_p = 2

UPDATE
	[testparams] [t]
SET
	[t].[_p] = ?
WHERE
	[t].[_p] = 1

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [testparams]

