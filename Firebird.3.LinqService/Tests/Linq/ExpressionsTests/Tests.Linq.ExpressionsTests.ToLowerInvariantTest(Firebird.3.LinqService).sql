BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	Lower("p"."Taxonomy")
FROM
	"Doctor" "p"
WHERE
	Lower("p"."Taxonomy") = 'psychiatry'

