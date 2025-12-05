-- Firebird.3 Firebird3

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
		WHERE
			"p"."ParentID" = "c_1"."ParentID"
	)
FROM
	"Parent" "p"

