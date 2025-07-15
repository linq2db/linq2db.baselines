BeforeExecute
BeginTransaction
BeforeExecute
-- Access.Jet.Odbc AccessODBC

{ CALL Person_SelectAll() }

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
ORDER BY
	[t1].[PersonID]

BeforeExecute
DisposeTransaction
