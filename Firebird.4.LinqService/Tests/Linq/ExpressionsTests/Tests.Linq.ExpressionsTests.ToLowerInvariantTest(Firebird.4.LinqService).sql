BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	Lower("p"."Taxonomy")
FROM
	"Doctor" "p"
WHERE
	Lower("p"."Taxonomy") = 'psychiatry'

