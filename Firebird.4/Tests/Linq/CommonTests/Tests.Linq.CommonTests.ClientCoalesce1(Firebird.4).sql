BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 100

SELECT
	Coalesce("p"."Value1", Cast(@Value1 as Int))
FROM
	"Parent" "p"

