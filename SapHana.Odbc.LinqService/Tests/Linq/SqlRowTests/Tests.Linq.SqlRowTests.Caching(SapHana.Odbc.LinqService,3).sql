﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @r3 Int -- Int32
SET     @r3 = 3

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	"i"."Two" = "i"."One" * 2 AND "i"."Three" = ?

