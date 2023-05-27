BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 2
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'Joh%'
DECLARE @nameToCheck_1 NVarChar(3) -- String
SET     @nameToCheck_1 = 'Joh'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE ? AND InStr(1, [p].[FirstName], ?, 0) = 1 AND
	[p].[PersonID] = 1

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'Joh%'
DECLARE @nameToCheck_1 NVarChar(3) -- String
SET     @nameToCheck_1 = 'Joh'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE ? OR InStr(1, [p].[FirstName], ?, 0) <> 1) AND
	[p].[PersonID] = 1

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @nameToCheck_1 NVarChar(4) -- String
SET     @nameToCheck_1 = 'JOH%'
DECLARE @nameToCheck_2 NVarChar(3) -- String
SET     @nameToCheck_2 = 'JOH'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE ? AND InStr(1, [p].[FirstName], ?, 0) = 1 AND
	[p].[PersonID] = 1

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @nameToCheck_1 NVarChar(4) -- String
SET     @nameToCheck_1 = 'JOH%'
DECLARE @nameToCheck_2 NVarChar(3) -- String
SET     @nameToCheck_2 = 'JOH'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE ? OR InStr(1, [p].[FirstName], ?, 0) <> 1) AND
	[p].[PersonID] = 1

