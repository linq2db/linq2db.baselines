BeforeExecute
-- Firebird.4 Firebird4

SELECT
	(
		SELECT
			"c_1"."ParentID" + 1
		FROM
			"Child" "c_1"
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Parent" "p"

