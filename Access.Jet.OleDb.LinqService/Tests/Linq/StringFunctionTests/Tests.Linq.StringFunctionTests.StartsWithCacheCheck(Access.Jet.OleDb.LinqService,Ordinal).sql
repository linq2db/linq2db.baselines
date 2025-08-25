BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT TOP 2
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @nameToCheck VarWChar(4) -- String
SET     @nameToCheck = 'Joh%'
DECLARE @nameToCheck_1 VarWChar(3) -- String
SET     @nameToCheck_1 = 'Joh'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck AND InStr(1, [p].[FirstName], @nameToCheck_1, 0) = 1 AND
	[p].[PersonID] = 1

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @nameToCheck VarWChar(4) -- String
SET     @nameToCheck = 'Joh%'
DECLARE @nameToCheck_1 VarWChar(3) -- String
SET     @nameToCheck_1 = 'Joh'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE @nameToCheck OR InStr(1, [p].[FirstName], @nameToCheck_1, 0) <> 1) AND
	[p].[PersonID] = 1

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @nameToCheck VarWChar(4) -- String
SET     @nameToCheck = 'JOH%'
DECLARE @nameToCheck_1 VarWChar(3) -- String
SET     @nameToCheck_1 = 'JOH'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck AND InStr(1, [p].[FirstName], @nameToCheck_1, 0) = 1 AND
	[p].[PersonID] = 1

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @nameToCheck VarWChar(4) -- String
SET     @nameToCheck = 'JOH%'
DECLARE @nameToCheck_1 VarWChar(3) -- String
SET     @nameToCheck_1 = 'JOH'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE @nameToCheck OR InStr(1, [p].[FirstName], @nameToCheck_1, 0) <> 1) AND
	[p].[PersonID] = 1

