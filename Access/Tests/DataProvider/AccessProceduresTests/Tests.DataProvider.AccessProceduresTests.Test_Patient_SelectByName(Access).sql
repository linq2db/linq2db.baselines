﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Access AccessOleDb
DECLARE @firstName VarChar(6) -- AnsiString
SET     @firstName = 'Tester'
DECLARE @lastName VarChar(9) -- AnsiString
SET     @lastName = 'Testerson'

Patient_SelectByName

BeforeExecute
-- Access AccessOleDb
DECLARE @firstName VarWChar(6) -- String
SET     @firstName = 'Tester'
DECLARE @lastName VarWChar(9) -- String
SET     @lastName = 'Testerson'

SELECT
	Count(*)
FROM
	[Patient] [_]
		INNER JOIN [Person] [a_Person] ON ([_].[PersonID] = [a_Person].[PersonID])
WHERE
	[a_Person].[FirstName] = @firstName AND [a_Person].[LastName] = @lastName

BeforeExecute
-- Access AccessOleDb
DECLARE @firstName VarWChar(6) -- String
SET     @firstName = 'Tester'
DECLARE @lastName VarWChar(9) -- String
SET     @lastName = 'Testerson'

SELECT
	[a_Person].[PersonID],
	[a_Person].[FirstName],
	[a_Person].[LastName],
	[a_Person].[MiddleName],
	[a_Person].[Gender],
	[_].[Diagnosis]
FROM
	[Patient] [_]
		INNER JOIN [Person] [a_Person] ON ([_].[PersonID] = [a_Person].[PersonID])
WHERE
	[a_Person].[FirstName] = @firstName AND [a_Person].[LastName] = @lastName
ORDER BY
	[a_Person].[PersonID]

BeforeExecute
DisposeTransaction
