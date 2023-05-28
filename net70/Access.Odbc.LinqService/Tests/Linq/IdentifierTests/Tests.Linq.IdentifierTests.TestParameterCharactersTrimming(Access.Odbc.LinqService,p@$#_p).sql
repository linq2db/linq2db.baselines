BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [testparams]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [testparams]
(
	[p@$#_p] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p@$#_p Int -- Int32
SET     @p@$#_p = 2

UPDATE
	[testparams] [t]
SET
	[t].[p@$#_p] = ?
WHERE
	[t].[p@$#_p] = 1

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [testparams]

