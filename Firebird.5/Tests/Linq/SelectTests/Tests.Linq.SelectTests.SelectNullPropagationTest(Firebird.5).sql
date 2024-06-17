BeforeExecute
-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT
	CASE
		WHEN "q"."ParentID" IS NOT NULL THEN "q"."ParentID"
		ELSE CAST(@p AS Int)
	END
FROM
	"Parent" "q"

