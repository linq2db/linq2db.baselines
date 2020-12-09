BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[PersonID],
	[t1].[Taxonomy]
FROM
	[Doctor] [t1]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	(
		SELECT TOP 1
			[d].[Taxonomy]
		FROM
			[Doctor] [d]
		WHERE
			[t1].[PersonID] = [d].[PersonID]
	)
FROM
	[Doctor] [t1]
GROUP BY
	[t1].[PersonID]

