-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	CAST("r"."Diagnosis" AS BLOB) STARTING WITH 'Hall'

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	CAST("r"."Diagnosis" AS BLOB) STARTING WITH 'hall'

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	Lower("r"."Diagnosis") STARTING WITH 'hall'

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	Lower("r"."Diagnosis") STARTING WITH 'hall'

