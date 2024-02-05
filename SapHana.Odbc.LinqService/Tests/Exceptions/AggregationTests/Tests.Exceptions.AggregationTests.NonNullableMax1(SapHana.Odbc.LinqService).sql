BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Max("_"."ParentID")
FROM
	"Parent" "_"
WHERE
	"_"."ParentID" < 0

