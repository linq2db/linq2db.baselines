﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CASE WHEN EXISTS(
		SELECT
			*
		FROM
			"Parent" "p"
	) THEN 1 ELSE 0 END
FROM DUMMY

