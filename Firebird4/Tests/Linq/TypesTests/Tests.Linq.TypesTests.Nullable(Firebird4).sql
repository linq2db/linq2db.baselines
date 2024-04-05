BeforeExecute
-- Firebird4 Firebird
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT
	CASE
		WHEN "p"."Value1" IS NULL THEN CAST(@p AS Int)
		ELSE "p"."Value1"
	END
FROM
	"Parent" "p"

