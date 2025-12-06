-- SQLite.Classic SQLite

SELECT
	[p].[AGE],
	[p].[NAME],
	[p].[OPTIONS] & 15
FROM
	[PERSON_1900] [p]
WHERE
	([p].[OPTIONS] & 15) = 4 OR ([p].[OPTIONS] & 15) = 5

