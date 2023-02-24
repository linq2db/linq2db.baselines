BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @input_2 NVarChar(6) -- String
SET     @input_2 = '%test%'

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
DisposeTransaction
BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @input_2 NVarChar(6) -- String
SET     @input_2 = '%test%'

SELECT
	[p].[FirstName],
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	LCase([p].[FirstName]) LIKE ?

