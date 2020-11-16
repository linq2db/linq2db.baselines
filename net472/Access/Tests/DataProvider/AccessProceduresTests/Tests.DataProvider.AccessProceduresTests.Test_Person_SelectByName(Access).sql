BeforeExecute
-- Access AccessOleDb
DECLARE @firstName VarChar(6) -- AnsiString
SET     @firstName = 'Jürgen'
DECLARE @lastName VarChar(5) -- AnsiString
SET     @lastName = 'König'

Person_SelectByName

BeforeExecute
-- Access AccessOleDb
DECLARE @firstName VarWChar(6) -- String
SET     @firstName = 'Jürgen'
DECLARE @lastName VarWChar(5) -- String
SET     @lastName = 'König'

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[FirstName] = @firstName AND [_].[LastName] = @lastName

BeforeExecute
-- Access AccessOleDb
DECLARE @firstName VarWChar(6) -- String
SET     @firstName = 'Jürgen'
DECLARE @lastName VarWChar(5) -- String
SET     @lastName = 'König'

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[FirstName] = @firstName AND [_].[LastName] = @lastName

