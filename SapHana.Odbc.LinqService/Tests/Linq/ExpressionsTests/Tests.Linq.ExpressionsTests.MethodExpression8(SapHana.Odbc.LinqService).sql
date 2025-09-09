BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
		INNER JOIN "Parent" "p" ON "p"."ParentID" = CAST(Floor(CAST("ch"."ChildID" AS Double) / 10) AS Integer)
WHERE
	"ch"."ParentID" = "p"."ParentID"

