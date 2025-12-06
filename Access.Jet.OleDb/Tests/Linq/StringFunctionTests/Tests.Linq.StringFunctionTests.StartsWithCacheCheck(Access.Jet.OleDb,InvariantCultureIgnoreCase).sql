-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

-- Access.Jet.OleDb AccessOleDb
DECLARE @nameToCheck VarWChar(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck AND [p].[PersonID] = 1

-- Access.Jet.OleDb AccessOleDb
DECLARE @nameToCheck VarWChar(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE @nameToCheck AND [p].[PersonID] = 1

