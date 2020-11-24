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
			[keyParam].[Taxonomy]
		FROM
			[Doctor] [keyParam]
		WHERE
			[t1].[PersonID] = [keyParam].[PersonID]
	)
FROM
	[Doctor] [t1]
GROUP BY
	[t1].[PersonID]

