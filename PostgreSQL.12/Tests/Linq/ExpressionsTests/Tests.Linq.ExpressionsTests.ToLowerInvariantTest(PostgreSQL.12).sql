BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	p."Taxonomy"
FROM
	"Doctor" p
WHERE
	Lower(p."Taxonomy") = 'psychiatry'

