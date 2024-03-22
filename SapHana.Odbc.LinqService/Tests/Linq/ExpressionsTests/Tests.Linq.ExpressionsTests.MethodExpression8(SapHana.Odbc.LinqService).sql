BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
		INNER JOIN "Parent" "p" ON "p"."ParentID" = Cast(Floor(Floor(Cast("ch"."ChildID" as Double) / 10)) as Integer)
WHERE
	"ch"."ParentID" = "p"."ParentID"

