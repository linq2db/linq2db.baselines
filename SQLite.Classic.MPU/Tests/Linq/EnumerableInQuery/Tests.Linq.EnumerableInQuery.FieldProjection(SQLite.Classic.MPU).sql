-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t2].[FirstName],
	[t2].[ID],
	[t2].[LastName],
	[t2].[MiddleName],
	[t2].[Gender]
FROM
	[Person] [x]
		INNER JOIN (
			SELECT
				[t1].[FirstName],
				[t1].[ID],
				[t1].[LastName],
				[t1].[MiddleName],
				[t1].[Gender],
				ROW_NUMBER() OVER (PARTITION BY [t1].[ID] ORDER BY [t1].[ID]) as [rn]
			FROM
				(
					SELECT NULL [ID], NULL [FirstName], NULL [LastName], NULL [MiddleName], NULL [Gender] WHERE 1 = 0
					UNION ALL
					VALUES
						(1,'John','Pupkin',NULL,'M'), (2,'Tester','Testerson',NULL,'M'),
						(3,'Jane','Doe',NULL,'F'), (4,'Jürgen','König','Ko','M')
					) [t1]
		) [t2] ON [t2].[ID] = [x].[PersonID] AND [t2].[rn] <= 1

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

