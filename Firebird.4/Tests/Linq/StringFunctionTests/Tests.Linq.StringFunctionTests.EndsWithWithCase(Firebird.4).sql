﻿BeforeExecute
--  Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Patient" "p"
WHERE
	CAST("p"."Diagnosis" AS BLOB) LIKE '%Persecution' ESCAPE '~' AND
	"p"."PersonID" = 2

BeforeExecute
--  Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Patient" "p"
WHERE
	CAST("p"."Diagnosis" AS BLOB) NOT LIKE '%Persecution' ESCAPE '~' AND
	"p"."PersonID" = 2

BeforeExecute
--  Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Patient" "p"
WHERE
	CAST("p"."Diagnosis" AS BLOB) LIKE '%persecution' ESCAPE '~' AND
	"p"."PersonID" = 2

BeforeExecute
--  Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Patient" "p"
WHERE
	CAST("p"."Diagnosis" AS BLOB) NOT LIKE '%persecution' ESCAPE '~' AND
	"p"."PersonID" = 2

