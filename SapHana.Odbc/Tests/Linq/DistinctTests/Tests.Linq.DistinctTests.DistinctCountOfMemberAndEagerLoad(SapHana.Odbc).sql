-- SapHana.Odbc SapHanaOdbc
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			"p"."ParentID"
		FROM
			"Parent" "p"
	) "t1"

