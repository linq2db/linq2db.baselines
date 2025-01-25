BeforeExecute
-- SQLite.Classic SQLite

SELECT
	'Title',
	[it].[Title],
	COUNT(DISTINCT [it].[YearsExperience])
FROM
	[odata_person] [it]
GROUP BY
	[it].[Title]

