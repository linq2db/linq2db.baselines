-- Firebird.3 Firebird3

SELECT
	Coalesce("p"."Value1", 100) + 50
FROM
	"Parent" "p"

