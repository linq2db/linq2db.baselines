BeforeExecute
-- Firebird4 Firebird

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	(
		SELECT FIRST 1
			1
		FROM
			"Child" "t1"
		WHERE
			"p"."ParentID" = "t1"."ParentID"
	) IS NOT NULL

