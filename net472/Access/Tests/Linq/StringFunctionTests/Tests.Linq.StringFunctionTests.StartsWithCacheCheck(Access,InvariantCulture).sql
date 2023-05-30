BeforeExecute
-- Access AccessOleDb

SELECT TOP 2
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

BeforeExecute
-- Access AccessOleDb
DECLARE @nameToCheck_1_1 VarWChar(4) -- String
SET     @nameToCheck_1_1 = 'Joh%'
DECLARE @nameToCheck_1_1_1 VarWChar(3) -- String
SET     @nameToCheck_1_1_1 = 'Joh'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck_1_1 AND InStr(1, [p].[FirstName], @nameToCheck_1_1_1, 0) = 1 AND
	[p].[PersonID] = 1

BeforeExecute
-- Access AccessOleDb
DECLARE @nameToCheck_1_1 VarWChar(4) -- String
SET     @nameToCheck_1_1 = 'Joh%'
DECLARE @nameToCheck_1_1_1 VarWChar(3) -- String
SET     @nameToCheck_1_1_1 = 'Joh'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE @nameToCheck_1_1 OR InStr(1, [p].[FirstName], @nameToCheck_1_1_1, 0) <> 1) AND
	[p].[PersonID] = 1

BeforeExecute
-- Access AccessOleDb
DECLARE @nameToCheck_1_1_1 VarWChar(4) -- String
SET     @nameToCheck_1_1_1 = 'JOH%'
DECLARE @nameToCheck_1_1_1_1 VarWChar(3) -- String
SET     @nameToCheck_1_1_1_1 = 'JOH'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck_1_1_1 AND InStr(1, [p].[FirstName], @nameToCheck_1_1_1_1, 0) = 1 AND
	[p].[PersonID] = 1

BeforeExecute
-- Access AccessOleDb
DECLARE @nameToCheck_1_1_1 VarWChar(4) -- String
SET     @nameToCheck_1_1_1 = 'JOH%'
DECLARE @nameToCheck_1_1_1_1 VarWChar(3) -- String
SET     @nameToCheck_1_1_1_1 = 'JOH'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE @nameToCheck_1_1_1 OR InStr(1, [p].[FirstName], @nameToCheck_1_1_1_1, 0) <> 1) AND
	[p].[PersonID] = 1

