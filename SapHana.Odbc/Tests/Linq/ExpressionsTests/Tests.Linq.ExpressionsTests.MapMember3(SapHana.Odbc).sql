-- SapHana.Odbc SapHanaOdbc
DECLARE @n Int -- Int32
SET     @n = 2

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			"p"."ParentID" = "a_Children"."ParentID" AND "a_Children"."ChildID" > ?
	) + 2
FROM
	"Parent" "p"

