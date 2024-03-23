BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	AVG("_"."ParentID")
FROM
	"Parent" "_"
WHERE
	"_"."ParentID" < 0

