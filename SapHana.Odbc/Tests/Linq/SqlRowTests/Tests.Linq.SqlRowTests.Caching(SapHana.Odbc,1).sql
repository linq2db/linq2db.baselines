﻿BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @r3  -- Int32
SET     @r3 = 1

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	"i"."Two" = "i"."One" * 2 AND "i"."Three" = ?

