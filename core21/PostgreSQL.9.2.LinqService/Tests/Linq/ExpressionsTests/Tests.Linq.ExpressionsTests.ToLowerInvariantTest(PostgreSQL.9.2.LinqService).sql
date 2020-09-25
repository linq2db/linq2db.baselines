BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Lower(p."Taxonomy")
FROM
	"Doctor" p
WHERE
	Lower(p."Taxonomy") = 'psychiatry'

