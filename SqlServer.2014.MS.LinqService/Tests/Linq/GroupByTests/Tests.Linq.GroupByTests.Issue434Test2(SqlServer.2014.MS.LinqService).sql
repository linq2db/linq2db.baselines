BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[m_1].[PersonID],
	[d].[PersonID],
	[d].[Diagnosis]
FROM
	[Person] [m_1]
		INNER JOIN [Patient] [d] ON [m_1].[PersonID] = [d].[PersonID]
WHERE
	Lower([m_1].[FirstName]) LIKE N'%test%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[FirstName],
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) LIKE N'%test%' ESCAPE N'~'

