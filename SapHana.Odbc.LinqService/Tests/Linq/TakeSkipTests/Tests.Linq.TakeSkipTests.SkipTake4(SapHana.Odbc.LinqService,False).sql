BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t2"."ParentID",
	"t2"."ChildID"
FROM
	(
		SELECT
			"t1"."ChildID",
			"t1"."ParentID"
		FROM
			"Child" "t1"
		ORDER BY
			"t1"."ChildID" DESC
		LIMIT 7 OFFSET 1
	) "t2"
ORDER BY
	"t2"."ChildID"
LIMIT 4200000000 OFFSET 2

