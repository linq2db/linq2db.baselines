﻿BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."Int" IN (NULL, NULL)

BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."Int" NOT IN (NULL, NULL)

