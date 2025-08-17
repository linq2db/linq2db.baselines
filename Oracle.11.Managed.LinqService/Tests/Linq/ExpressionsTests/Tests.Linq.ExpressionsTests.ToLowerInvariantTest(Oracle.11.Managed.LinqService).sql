BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	Lower(p."Taxonomy")
FROM
	"Doctor" p
WHERE
	Lower(p."Taxonomy") = 'psychiatry'

