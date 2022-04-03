BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Lower(p."Taxonomy")
FROM
	"Doctor" p
WHERE
	Lower(p."Taxonomy") = 'psychiatry'

