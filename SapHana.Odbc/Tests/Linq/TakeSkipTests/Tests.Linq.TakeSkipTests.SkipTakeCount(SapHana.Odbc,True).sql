-- SapHana.Odbc SapHanaOdbc
DECLARE @take Int -- Int32
SET     @take = 5
DECLARE @skip Int -- Int32
SET     @skip = 2

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as "c1"
		FROM
			"Child" "t1"
		LIMIT ? OFFSET ?
	) "t2"

