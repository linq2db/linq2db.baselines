﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Access.Jet.OleDb AccessOleDb

Patient_SelectAll

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

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
