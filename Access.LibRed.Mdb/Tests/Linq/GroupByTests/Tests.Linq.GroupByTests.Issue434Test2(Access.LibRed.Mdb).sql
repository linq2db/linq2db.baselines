-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[m_1].[PersonID],
	[d].[PersonID] as [PersonID_1],
	[d].[Diagnosis]
FROM
	[Person] [m_1]
		INNER JOIN [Patient] [d] ON ([m_1].[PersonID] = [d].[PersonID])
WHERE
	LCase([m_1].[FirstName]) LIKE '%test%'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[p].[FirstName],
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	LCase([p].[FirstName]) LIKE '%test%'

