BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	Lower(p."Taxonomy")
FROM
	"Doctor" p
WHERE
	Lower(p."Taxonomy") = 'psychiatry'

