-- SqlServer.2017.MS SqlServer.2017
SELECT
	[p].[PersonID],
	IIF([m_2].[MiddleName] IS NULL, N'default2', [m_2].[MiddleName])
FROM
	[Person] [p]
		LEFT JOIN (
			SELECT
				Coalesce([m_1].[MiddleName], N'default1') as [MiddleName],
				[m_1].[PersonID] + 1 as [c1]
			FROM
				[Person] [m_1]
		) [m_2] ON [p].[PersonID] = [m_2].[c1]
WHERE
	[p].[PersonID] IN (1, 2, 3, 4)
ORDER BY
	[p].[PersonID]

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

