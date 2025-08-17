BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

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

