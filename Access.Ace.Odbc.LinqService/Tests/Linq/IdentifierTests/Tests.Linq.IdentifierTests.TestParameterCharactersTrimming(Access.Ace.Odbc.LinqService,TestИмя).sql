BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [testparams]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [testparams]
(
	[TestИмя] Int NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @TestИмя Int -- Int32
SET     @TestИмя = 2

UPDATE
	[testparams] [t]
SET
	[t].[TestИмя] = ?
WHERE
	[t].[TestИмя] = 1

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [testparams]

