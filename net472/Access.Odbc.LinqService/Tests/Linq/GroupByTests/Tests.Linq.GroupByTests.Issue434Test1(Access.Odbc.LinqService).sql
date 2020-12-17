BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p_1 NVarChar(6) -- String
SET     @p_1 = '%test%'

SELECT
	[p].[PersonID],
	[_gjd_ri].[PersonID],
	[_gjd_ri].[Diagnosis]
FROM
	[Person] [p]
		INNER JOIN [Patient] [_gjd_ri] ON ([_gjd_ri].[PersonID] = [p].[PersonID])
WHERE
	LCase([p].[FirstName]) LIKE ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @input_1 NVarChar(6) -- String
SET     @input_1 = '%test%'

SELECT
	[p].[FirstName],
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	LCase([p].[FirstName]) LIKE ?

