-- SqlServer.2012
SELECT
	[m_1].[Gender],
	[d].[PersonID]
FROM
	(
		SELECT DISTINCT
			[p].[Gender]
		FROM
			[Person] [p]
	) [m_1]
		INNER JOIN [Person] [d] ON [d].[Gender] = [m_1].[Gender]

-- SqlServer.2012
SELECT
	[p].[PersonID],
	[p].[Gender]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

