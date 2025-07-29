BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 100

SELECT
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	Coalesce("x"."Value1", CAST(@Value1 AS Int)) > 10

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"p"."Value1"
FROM
	"Parent" "p"

