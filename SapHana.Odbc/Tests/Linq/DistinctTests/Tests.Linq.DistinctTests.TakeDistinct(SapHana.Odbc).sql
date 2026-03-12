-- SapHana.Odbc SapHanaOdbc
DECLARE @take Int -- Int32
SET     @take = 4

SELECT DISTINCT
	"t1"."ParentID"
FROM
	(
		SELECT
			"ch"."ParentID"
		FROM
			"Child" "ch"
		ORDER BY
			"ch"."ParentID"
		LIMIT ?
	) "t1"

