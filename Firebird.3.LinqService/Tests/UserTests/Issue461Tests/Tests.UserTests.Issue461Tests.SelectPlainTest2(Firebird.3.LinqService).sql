BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"p"."ParentID",
	(
		SELECT
			"c_1"."ParentID" + 1
		FROM
			"Child" "c_1"
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Parent" "p"

