BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [testparams]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [testparams]
(
	[TestИмя] Int NOT NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @TestИмя Int -- Int32
SET     @TestИмя = 2

UPDATE
	[testparams] [t]
SET
	[t].[TestИмя] = ?
WHERE
	[t].[TestИмя] = 1

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [testparams]

