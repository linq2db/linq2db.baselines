-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
		INNER JOIN "Parent" "p" ON "p"."ParentID" = CAST(Floor(CAST("t1"."ChildID" AS Double) / 10) AS Integer)
WHERE
	"t1"."ParentID" = "p"."ParentID"

