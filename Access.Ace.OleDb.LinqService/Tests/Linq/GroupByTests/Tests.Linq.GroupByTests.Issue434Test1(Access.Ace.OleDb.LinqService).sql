BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @input VarWChar(6) -- String
SET     @input = '%test%'

SELECT
	[m_1].[PersonID],
	[d].[PersonID],
	[d].[Diagnosis]
FROM
	[Person] [m_1]
		INNER JOIN [Patient] [d] ON ([m_1].[PersonID] = [d].[PersonID])
WHERE
	LCase([m_1].[FirstName]) LIKE @input

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @input VarWChar(6) -- String
SET     @input = '%test%'

SELECT
	[p].[FirstName],
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	LCase([p].[FirstName]) LIKE @input

