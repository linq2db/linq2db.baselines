BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	(
		SELECT
			"t1"."ParentID"
		FROM
			"Child" "t1"
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Parent" "p"

