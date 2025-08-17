BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	Coalesce("p"."Value1", 100) + 50
FROM
	"Parent" "p"

