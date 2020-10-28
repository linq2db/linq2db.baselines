BeforeExecute
-- Access AccessOleDb
DECLARE @s VarWChar(7) -- String
SET     @s = '123n456'
DECLARE @toTest VarWChar(3) -- String
SET     @toTest = '%n%'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE @toTest

BeforeExecute
-- Access AccessOleDb
DECLARE @s2 VarWChar(7) -- String
SET     @s2 = '123N456'
DECLARE @toTest VarWChar(3) -- String
SET     @toTest = '%n%'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s2 LIKE @toTest

