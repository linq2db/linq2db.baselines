﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take Int -- Int32
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
				SELECT -10 AS "X", 10 AS "Y" FROM DUMMY) "t"
		WHERE
			"x"."position".x > "t"."X"
	)
LIMIT ?

