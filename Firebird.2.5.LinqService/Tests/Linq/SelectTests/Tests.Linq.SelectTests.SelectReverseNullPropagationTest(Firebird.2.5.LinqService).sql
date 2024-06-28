BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	CASE
		WHEN "q"."ParentID" IS NOT NULL THEN "q"."ParentID"
		ELSE 0
	END
FROM
	"Parent" "q"

