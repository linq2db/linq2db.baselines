-- SapHana.Native SapHana
SELECT
	"t1"."ParentID",
	"t1"."ChildID",
	(
		SELECT
			COUNT(*)
		FROM
			"Parent" "p"
		WHERE
			"t1"."ParentID" = "p"."ParentID"
	)
FROM
	"Child" "t1"
ORDER BY
	"t1"."ParentID",
	"t1"."ChildID" DESC

