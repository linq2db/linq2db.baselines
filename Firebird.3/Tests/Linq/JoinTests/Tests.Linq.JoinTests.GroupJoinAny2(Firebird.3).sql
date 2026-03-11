-- Firebird.3 Firebird3

SELECT
	"t1"."ParentID",
	EXISTS(
		SELECT
			*
		FROM
			"Child" "t1_1"
		WHERE
			"t1"."ParentID" = "t1_1"."ParentID"
	)
FROM
	"Parent" "t1"

