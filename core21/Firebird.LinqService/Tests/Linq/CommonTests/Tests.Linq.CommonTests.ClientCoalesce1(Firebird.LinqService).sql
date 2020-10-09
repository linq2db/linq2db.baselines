BeforeExecute
-- Firebird
DECLARE @p1 Integer -- Int32
SET     @p1 = 100

SELECT 
	Coalesce("p"."Value1", Cast(@p1 as Int))
FROM
	"Parent" "p"

