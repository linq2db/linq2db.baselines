-- SqlCe

SELECT
	[m_1].[PersonID],
	[d].[PersonID] as [PersonID_1],
	[d].[Diagnosis]
FROM
	[Person] [m_1]
		INNER JOIN [Patient] [d] ON [m_1].[PersonID] = [d].[PersonID]
WHERE
	Lower([m_1].[FirstName]) LIKE '%test%' ESCAPE '~'

-- SqlCe

SELECT
	[p].[FirstName],
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) LIKE '%test%' ESCAPE '~'

