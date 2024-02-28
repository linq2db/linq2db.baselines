BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"_"."ParentID" + 1
FROM
	"Parent" "cp",
	"Child" "_"
WHERE
	"_"."ParentID" > 0

