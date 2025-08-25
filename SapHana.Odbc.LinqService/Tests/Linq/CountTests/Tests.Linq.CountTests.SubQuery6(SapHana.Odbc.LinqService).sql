BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 5

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			"p_1"."ParentID" = "a_Children"."ParentID"
	)
FROM
	(
		SELECT
			"p"."ParentID"
		FROM
			"Parent" "p"
		LIMIT ?
	) "p_1"
ORDER BY
	"p_1"."ParentID" DESC

