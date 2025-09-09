BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[m_1].[PersonID] as [ID],
	[d].[PersonID],
	[d].[Diagnosis]
FROM
	[Person] [m_1]
		INNER JOIN [Patient] [d] ON [m_1].[PersonID] = [d].[PersonID]
WHERE
	Lower([m_1].[FirstName]) LIKE '%test%' ESCAPE '~'

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID] as [ID]
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) LIKE '%test%' ESCAPE '~'

