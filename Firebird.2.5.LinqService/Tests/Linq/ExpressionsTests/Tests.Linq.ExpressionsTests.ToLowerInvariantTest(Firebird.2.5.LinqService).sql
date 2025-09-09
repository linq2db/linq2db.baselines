BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	Lower("p"."Taxonomy")
FROM
	"Doctor" "p"
WHERE
	Lower("p"."Taxonomy") = 'psychiatry'

