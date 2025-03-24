BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 5
DECLARE @skip  -- Int32
SET     @skip = 2

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			"Child" "t1"
		LIMIT ? OFFSET ?
	) "t2"

