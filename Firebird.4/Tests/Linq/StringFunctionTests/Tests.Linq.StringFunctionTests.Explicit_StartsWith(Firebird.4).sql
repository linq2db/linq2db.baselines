-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	CAST("r"."Diagnosis" AS BLOB) STARTING WITH 'Hall'

-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	CAST("r"."Diagnosis" AS BLOB) STARTING WITH 'hall'

-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	Lower("r"."Diagnosis") STARTING WITH 'hall'

-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	Lower("r"."Diagnosis") STARTING WITH 'hall'

