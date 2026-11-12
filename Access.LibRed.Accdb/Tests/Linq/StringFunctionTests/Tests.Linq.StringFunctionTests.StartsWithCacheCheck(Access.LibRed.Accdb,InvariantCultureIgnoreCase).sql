-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck AND [p].[PersonID] = 1

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE @nameToCheck AND [p].[PersonID] = 1

