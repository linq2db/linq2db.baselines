BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Parent" "p",
	"Child" "ch"
WHERE
	"p"."ParentID" = "ch"."ParentID"

