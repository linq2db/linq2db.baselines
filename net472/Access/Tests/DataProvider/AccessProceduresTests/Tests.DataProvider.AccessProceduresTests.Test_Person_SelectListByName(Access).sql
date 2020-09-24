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
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE @firstName AND [_].[LastName] LIKE @lastName

BeforeExecute
-- Access AccessOleDb
DECLARE @firstName_1 VarWChar(3) -- String
SET     @firstName_1 = '%e%'
DECLARE @lastName_1 VarWChar(3) -- String
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
	[_].[FirstName] LIKE @firstName_1 AND [_].[LastName] LIKE @lastName_1
ORDER BY
	[_].[PersonID]

