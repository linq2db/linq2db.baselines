BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	Coalesce("p"."Value1", 100) + 50
FROM
	"Parent" "p"

