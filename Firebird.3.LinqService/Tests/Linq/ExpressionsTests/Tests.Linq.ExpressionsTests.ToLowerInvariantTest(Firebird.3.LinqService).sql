BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"p"."Taxonomy"
FROM
	"Doctor" "p"
WHERE
	Lower("p"."Taxonomy") = 'psychiatry'

