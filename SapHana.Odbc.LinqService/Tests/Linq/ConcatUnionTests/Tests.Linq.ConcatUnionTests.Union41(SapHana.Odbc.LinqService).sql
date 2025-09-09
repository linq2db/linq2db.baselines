BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"p"."ParentID",
	CAST(1 AS TinyInt)
FROM
	"Parent" "p"
UNION
SELECT
	"ch"."ParentID",
	CAST(0 AS TinyInt)
FROM
	"Child" "ch"

