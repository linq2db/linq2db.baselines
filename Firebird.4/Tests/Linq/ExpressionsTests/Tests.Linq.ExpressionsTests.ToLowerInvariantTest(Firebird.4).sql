BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"p"."Taxonomy"
FROM
	"Doctor" "p"
WHERE
	Lower("p"."Taxonomy") = 'psychiatry'

