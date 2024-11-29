BeforeExecute
-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND '123#456' LIKE '%~#%' ESCAPE '~'

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND '123#456' NOT LIKE '%~#%' ESCAPE '~'

