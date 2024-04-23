BeforeExecute
-- Firebird.3 Firebird3

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "c_1"
		WHERE
			"t1"."ParentID" = "c_1"."ParentID"
	) + (
		SELECT
			COUNT(*)
		FROM
			"Child" "c_1"
		WHERE
			"t1"."ParentID" = "c_1"."ParentID"
	)
FROM
	"Parent" "t1"

