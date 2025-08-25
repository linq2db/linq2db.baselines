BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Patient" "p"
WHERE
	CAST("p"."Diagnosis" AS BLOB) LIKE '%Persecution' ESCAPE '~' AND
	"p"."PersonID" = 2

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Patient" "p"
WHERE
	CAST("p"."Diagnosis" AS BLOB) NOT LIKE '%Persecution' ESCAPE '~' AND
	"p"."PersonID" = 2

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Patient" "p"
WHERE
	CAST("p"."Diagnosis" AS BLOB) LIKE '%persecution' ESCAPE '~' AND
	"p"."PersonID" = 2

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Patient" "p"
WHERE
	CAST("p"."Diagnosis" AS BLOB) NOT LIKE '%persecution' ESCAPE '~' AND
	"p"."PersonID" = 2

