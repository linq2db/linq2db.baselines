BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	p."Taxonomy"
FROM
	"Doctor" p
WHERE
	Lower(p."Taxonomy") = 'psychiatry'

