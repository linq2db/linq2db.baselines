-- PostgreSQL.18 PostgreSQL13

SELECT
	Lower(p."Taxonomy")
FROM
	"Doctor" p
WHERE
	Lower(p."Taxonomy") = 'psychiatry'

