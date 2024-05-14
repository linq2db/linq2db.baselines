BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p NVarChar(6) -- String
SET     @p = '%test%'

SELECT
	[m_1].[PersonID],
	[d].[PersonID],
	[d].[Diagnosis]
FROM
	[Person] [m_1]
		INNER JOIN [Patient] [d] ON ([m_1].[PersonID] = [d].[PersonID])
WHERE
	LCase([m_1].[FirstName]) LIKE ?

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p NVarChar(6) -- String
SET     @p = '%test%'

SELECT
	[p].[FirstName],
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	LCase([p].[FirstName]) LIKE ?

