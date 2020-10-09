BeforeExecute
-- SQLite.MS SQLite

SELECT 
	[t1].[PersonID], 
	[t1].[Taxonomy]
FROM
	[Doctor] [t1]

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT 
	Lower(p."Taxonomy")
FROM
	"Doctor" p
WHERE
	Lower(p."Taxonomy") = 'psychiatry'

