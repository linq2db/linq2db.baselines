BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 100

SELECT
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	Coalesce("x"."Value1", CAST(@Value1 AS Int)) > 10

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"p"."Value1"
FROM
	"Parent" "p"

