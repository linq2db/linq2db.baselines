BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	Lower(p."Taxonomy")
FROM
	"Doctor" p
WHERE
	Lower(p."Taxonomy") = 'psychiatry'

