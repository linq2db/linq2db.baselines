BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	MAX("_"."ParentID")
FROM
	"Parent" "_"
WHERE
	"_"."ParentID" < 0

