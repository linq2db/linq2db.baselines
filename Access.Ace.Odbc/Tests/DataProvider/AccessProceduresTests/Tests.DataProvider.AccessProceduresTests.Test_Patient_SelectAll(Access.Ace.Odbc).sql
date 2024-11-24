BeforeExecute
BeginTransaction
BeforeExecute
-- Access.Ace.Odbc AccessODBC

{ CALL Patient_SelectAll() }

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[a_Person].[PersonID],
	[a_Person].[FirstName],
	[a_Person].[LastName],
	[a_Person].[MiddleName],
	[a_Person].[Gender],
	[p].[Diagnosis]
FROM
	[Patient] [p]
		INNER JOIN [Person] [a_Person] ON ([p].[PersonID] = [a_Person].[PersonID])
ORDER BY
	[a_Person].[PersonID]

BeforeExecute
DisposeTransaction
