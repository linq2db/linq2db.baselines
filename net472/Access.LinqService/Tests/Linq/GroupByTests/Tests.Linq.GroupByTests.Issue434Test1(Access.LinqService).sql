BeforeExecute
-- Access AccessOleDb
DECLARE @input VarWChar(6) -- String
SET     @input = '%test%'

SELECT
	[p].[PersonID],
	[_gjd_ri].[PersonID],
	[_gjd_ri].[Diagnosis]
FROM
	[Person] [p]
		INNER JOIN [Patient] [_gjd_ri] ON ([_gjd_ri].[PersonID] = [p].[PersonID])
WHERE
	LCase([p].[FirstName]) LIKE @input

BeforeExecute
-- Access AccessOleDb
DECLARE @input VarWChar(6) -- String
SET     @input = '%test%'

SELECT
	[p].[FirstName],
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	LCase([p].[FirstName]) LIKE @input

