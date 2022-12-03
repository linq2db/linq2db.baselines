BeforeExecute
-- Firebird
DECLARE @default_1 Integer -- Int32
SET     @default_1 = 0

SELECT
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	Coalesce("p"."Value1", @default_1) > 0

