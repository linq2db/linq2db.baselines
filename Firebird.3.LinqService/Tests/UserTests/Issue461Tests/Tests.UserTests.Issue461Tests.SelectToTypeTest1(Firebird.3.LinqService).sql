BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	(
		SELECT
			"l"."ParentID" + 1
		FROM
			"Child" "l"
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Parent" "sep"

