BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [testparams]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [testparams]
(
	[p_p] Int NOT NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @p_p  -- Int32
SET     @p_p = 2

UPDATE
	[testparams] [t]
SET
	[t].[p_p] = ?
WHERE
	[t].[p_p] = 1

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [testparams]

