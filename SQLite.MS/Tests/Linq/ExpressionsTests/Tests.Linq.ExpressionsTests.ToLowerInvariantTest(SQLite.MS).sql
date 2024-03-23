BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[Taxonomy]
FROM
	[Doctor] [p]
WHERE
	Lower([p].[Taxonomy]) = 'psychiatry'

