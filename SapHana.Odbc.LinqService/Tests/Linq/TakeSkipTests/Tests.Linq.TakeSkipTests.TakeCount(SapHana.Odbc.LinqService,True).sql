BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 5

SELECT
	Count(*)
FROM
	(
		SELECT
			*
		FROM
			"Child" "t1"
		LIMIT ?
	) "t2"

