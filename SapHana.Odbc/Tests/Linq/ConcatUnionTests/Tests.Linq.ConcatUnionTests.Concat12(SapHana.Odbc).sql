-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."ParentID",
	"p"."Value1",
	NULL,
	NULL,
	NULL
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 1
UNION ALL
SELECT
	NULL,
	NULL,
	"a_Parent"."ParentID",
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
FROM
	"Child" "ch"
		LEFT JOIN "Parent" "a_Parent" ON "ch"."ParentID" = "a_Parent"."ParentID"
WHERE
	"ch"."ParentID" = 2

