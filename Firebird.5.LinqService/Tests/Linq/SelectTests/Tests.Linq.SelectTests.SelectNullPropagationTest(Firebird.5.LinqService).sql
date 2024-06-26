BeforeExecute
-- Firebird.5 Firebird4

SELECT
	CASE
		WHEN "q"."ParentID" IS NOT NULL THEN "q"."ParentID"
		ELSE 0
	END
FROM
	"Parent" "q"

