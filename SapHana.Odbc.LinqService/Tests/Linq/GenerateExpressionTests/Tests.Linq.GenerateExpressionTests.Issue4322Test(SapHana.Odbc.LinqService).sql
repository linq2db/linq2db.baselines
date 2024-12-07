BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 3

SELECT
	"x"."position"
FROM
	"entities" "x"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT -10 AS "X" FROM DUMMY) "t"
		WHERE
			"x"."position".x > "t"."X"
	)
LIMIT ?

