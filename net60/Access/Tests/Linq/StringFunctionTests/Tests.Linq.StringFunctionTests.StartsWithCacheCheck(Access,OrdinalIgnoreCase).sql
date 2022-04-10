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
DECLARE @nameToCheck_1 VarWChar(4) -- String
SET     @nameToCheck_1 = 'JOH%'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck_1 AND [p].[PersonID] = 1

BeforeExecute
-- Access AccessOleDb
DECLARE @nameToCheck_1 VarWChar(4) -- String
SET     @nameToCheck_1 = 'JOH%'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE @nameToCheck_1 AND [p].[PersonID] = 1

