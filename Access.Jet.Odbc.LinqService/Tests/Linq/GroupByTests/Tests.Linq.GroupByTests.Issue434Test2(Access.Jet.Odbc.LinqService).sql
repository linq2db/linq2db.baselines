BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	[m_1].[PersonID],
	[d].[PersonID],
	[d].[Diagnosis]
FROM
	[Person] [m_1]
		INNER JOIN [Patient] [d] ON ([m_1].[PersonID] = [d].[PersonID])
WHERE
	LCase([m_1].[FirstName]) LIKE '%test%'

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	LCase([p].[FirstName]) LIKE '%test%'

