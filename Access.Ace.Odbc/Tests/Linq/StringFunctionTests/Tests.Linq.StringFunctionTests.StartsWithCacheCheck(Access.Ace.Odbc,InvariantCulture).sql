BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'Joh%'
DECLARE @nameToCheck NVarChar(3) -- String
SET     @nameToCheck = 'Joh'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE ? AND InStr(1, [p].[FirstName], ?, 0) = 1 AND
	[p].[PersonID] = 1

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'Joh%'
DECLARE @nameToCheck NVarChar(3) -- String
SET     @nameToCheck = 'Joh'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE ? OR NOT InStr(1, [p].[FirstName], ?, 0) = 1) AND
	[p].[PersonID] = 1

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'JOH%'
DECLARE @nameToCheck NVarChar(3) -- String
SET     @nameToCheck = 'JOH'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE ? AND InStr(1, [p].[FirstName], ?, 0) = 1 AND
	[p].[PersonID] = 1

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'JOH%'
DECLARE @nameToCheck NVarChar(3) -- String
SET     @nameToCheck = 'JOH'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE ? OR NOT InStr(1, [p].[FirstName], ?, 0) = 1) AND
	[p].[PersonID] = 1

