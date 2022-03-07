﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @firstName VarChar(3) -- AnsiString
SET     @firstName = '%e%'
DECLARE @lastName VarChar(3) -- AnsiString
SET     @lastName = '%o%'

{ CALL Person_SelectListByName(?, ?) }

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @firstName_1 NVarChar(3) -- String
SET     @firstName_1 = '%e%'
DECLARE @lastName_1 NVarChar(3) -- String
SET     @lastName_1 = '%o%'

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE ? AND [_].[LastName] LIKE ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @firstName_1 NVarChar(3) -- String
SET     @firstName_1 = '%e%'
DECLARE @lastName_1 NVarChar(3) -- String
SET     @lastName_1 = '%o%'

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE ? AND [_].[LastName] LIKE ?
ORDER BY
	[_].[PersonID]

BeforeExecute
RollbackTransaction
