BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"p"."ParentID",
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

