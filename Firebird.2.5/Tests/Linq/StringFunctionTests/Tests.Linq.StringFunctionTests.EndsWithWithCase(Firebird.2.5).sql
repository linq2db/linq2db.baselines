-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Patient" "p"
WHERE
	CAST("p"."Diagnosis" AS BLOB) LIKE '%Persecution' ESCAPE '~' AND
	"p"."PersonID" = 2

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Patient" "p"
WHERE
	CAST("p"."Diagnosis" AS BLOB) NOT LIKE '%Persecution' ESCAPE '~' AND
	"p"."PersonID" = 2

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Patient" "p"
WHERE
	CAST("p"."Diagnosis" AS BLOB) LIKE '%persecution' ESCAPE '~' AND
	"p"."PersonID" = 2

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Patient" "p"
WHERE
	CAST("p"."Diagnosis" AS BLOB) NOT LIKE '%persecution' ESCAPE '~' AND
	"p"."PersonID" = 2

