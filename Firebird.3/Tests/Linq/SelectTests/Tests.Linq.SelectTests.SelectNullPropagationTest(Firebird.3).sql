BeforeExecute
-- Firebird.3 Firebird3
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT
	CASE
		WHEN "q"."ParentID" IS NOT NULL THEN "q"."ParentID"
		ELSE CAST(@p AS Int)
	END
FROM
	"Parent" "q"

