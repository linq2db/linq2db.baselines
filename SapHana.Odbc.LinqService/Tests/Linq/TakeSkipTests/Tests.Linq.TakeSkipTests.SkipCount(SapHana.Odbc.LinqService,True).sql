BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @skip Int -- Int32
SET     @skip = 2

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			"Child" "t1"
		LIMIT 4200000000 OFFSET ?
	) "t2"

