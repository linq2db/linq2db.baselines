BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Patient" "p"
WHERE
	CAST("p"."Diagnosis" AS BLOB) LIKE '%Persecution' ESCAPE '~' AND
	"p"."PersonID" = 2

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Patient" "p"
WHERE
	CAST("p"."Diagnosis" AS BLOB) NOT LIKE '%Persecution' ESCAPE '~' AND
	"p"."PersonID" = 2

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Patient" "p"
WHERE
	CAST("p"."Diagnosis" AS BLOB) LIKE '%persecution' ESCAPE '~' AND
	"p"."PersonID" = 2

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Patient" "p"
WHERE
	CAST("p"."Diagnosis" AS BLOB) NOT LIKE '%persecution' ESCAPE '~' AND
	"p"."PersonID" = 2

