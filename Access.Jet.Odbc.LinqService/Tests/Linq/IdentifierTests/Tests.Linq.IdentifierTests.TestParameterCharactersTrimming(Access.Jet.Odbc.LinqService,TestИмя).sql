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

