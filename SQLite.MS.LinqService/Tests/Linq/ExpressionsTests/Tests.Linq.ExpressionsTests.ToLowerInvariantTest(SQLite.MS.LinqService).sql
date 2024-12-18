BeforeExecute
-- SQLite.MS SQLite

SELECT
	Lower([p].[Taxonomy])
FROM
	[Doctor] [p]
WHERE
	Lower([p].[Taxonomy]) = 'psychiatry' AND Lower([p].[Taxonomy]) IS NOT NULL

