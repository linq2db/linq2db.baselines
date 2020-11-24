BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[PersonID],
	[t1].[Taxonomy]
FROM
	[Doctor] [t1]

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Lower(p."Taxonomy")
FROM
	"Doctor" p
WHERE
	Lower(p."Taxonomy") = 'psychiatry'

