﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Access AccessOleDb
DECLARE @firstName VarChar(3) -- AnsiString
SET     @firstName = '%e%'
DECLARE @lastName VarChar(3) -- AnsiString
SET     @lastName = '%o%'

Person_SelectListByName

BeforeExecute
-- Access AccessOleDb
DECLARE @firstName VarWChar(3) -- String
SET     @firstName = '%e%'
DECLARE @lastName VarWChar(3) -- String
SET     @lastName = '%o%'

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE @firstName AND [t1].[LastName] LIKE @lastName

BeforeExecute
-- Access AccessOleDb
DECLARE @firstName VarWChar(3) -- String
SET     @firstName = '%e%'
DECLARE @lastName VarWChar(3) -- String
SET     @lastName = '%o%'

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE @firstName AND [t1].[LastName] LIKE @lastName
ORDER BY
	[t1].[PersonID]

BeforeExecute
DisposeTransaction
