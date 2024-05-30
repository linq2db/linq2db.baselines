BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access AccessOleDb
DECLARE @p VarWChar(6) -- String
SET     @p = '%test%'

SELECT
	[m_1].[PersonID],
	[d].[PersonID],
	[d].[Diagnosis]
FROM
	[Person] [m_1]
		INNER JOIN [Patient] [d] ON ([m_1].[PersonID] = [d].[PersonID])
WHERE
	LCase([m_1].[FirstName]) LIKE @p

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access AccessOleDb
DECLARE @p VarWChar(6) -- String
SET     @p = '%test%'

SELECT
	[p].[FirstName],
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	LCase([p].[FirstName]) LIKE @p

