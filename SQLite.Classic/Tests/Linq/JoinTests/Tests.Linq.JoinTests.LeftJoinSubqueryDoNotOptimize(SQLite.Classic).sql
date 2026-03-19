-- SQLite.Classic SQLite

SELECT
	[t1].[PersonID],
	Coalesce([m_2].[MiddleName], 'default2')
FROM
	[Person] [t1]
		LEFT JOIN (
			SELECT
				Coalesce([m_1].[MiddleName], 'default1') as [MiddleName],
				[m_1].[PersonID] + 1 as [c1]
			FROM
				[Person] [m_1]
		) [m_2] ON [t1].[PersonID] = [m_2].[c1]

-- SQLite.Classic SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

