-- SapHana.Odbc SapHanaOdbc

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
WHERE
	"ch"."ChildID" > 3 OR "ch"."ChildID" < 4
ORDER BY
	"ch"."ParentID",
	"ch"."ChildID"
LIMIT 4200000000 OFFSET 3

