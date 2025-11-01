-- SapHana.Odbc SapHanaOdbc
DECLARE @take Int -- Int32
SET     @take = 5

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			"Child" "t1"
		LIMIT ?
	) "t2"

