-- SqlServer.2025
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
ORDER BY
	[p].[PersonID]

-- SqlServer.2025
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

