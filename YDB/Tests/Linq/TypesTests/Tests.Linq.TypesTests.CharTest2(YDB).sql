-- SQLite.MS SQLite

SELECT
	[t1].[PersonID],
	[t1].[FirstName],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- YDB Ydb

SELECT
	p.PersonID as PersonID
FROM
	Person p
WHERE
	'M'u = p.Gender

