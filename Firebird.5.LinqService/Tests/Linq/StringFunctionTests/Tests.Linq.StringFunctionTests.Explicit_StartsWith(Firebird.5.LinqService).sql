BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	CAST("r"."Diagnosis" AS BLOB) STARTING WITH 'Hall'

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	CAST("r"."Diagnosis" AS BLOB) STARTING WITH 'hall'

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	Lower("r"."Diagnosis") STARTING WITH 'hall'

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	Lower("r"."Diagnosis") STARTING WITH 'hall'

