﻿BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Patient" "p"
WHERE
	"p"."Diagnosis" LIKE '%Persecution' ESCAPE '~' AND
	"p"."PersonID" = 2

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Patient" "p"
WHERE
	"p"."Diagnosis" NOT LIKE '%Persecution' ESCAPE '~' AND
	"p"."PersonID" = 2

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Patient" "p"
WHERE
	"p"."Diagnosis" LIKE '%persecution' ESCAPE '~' AND
	"p"."PersonID" = 2

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Patient" "p"
WHERE
	"p"."Diagnosis" NOT LIKE '%persecution' ESCAPE '~' AND
	"p"."PersonID" = 2

