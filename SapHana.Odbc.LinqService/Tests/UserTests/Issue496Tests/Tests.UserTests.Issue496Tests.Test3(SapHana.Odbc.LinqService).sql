BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"a_Children"."ChildID",
	"a_Children"."ParentID"
FROM
	"Parent" "p"
		INNER JOIN "Child" "a_Children" ON CAST("p"."ParentID" AS BigInt) = "a_Children"."ParentID"
WHERE
	"p"."ParentID" = 1

