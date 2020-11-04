BeforeExecute
-- SQLite.Default SQLite.MS SQLite

SELECT
	[t1].[PersonID],
	[t1].[Taxonomy]
FROM
	[Doctor] [t1]

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Lower(p."Taxonomy")
FROM
	"Doctor" p
WHERE
	Lower(p."Taxonomy") = 'psychiatry'

