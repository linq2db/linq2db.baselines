BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	CAST("r"."Diagnosis" AS BLOB) STARTING WITH 'Hall'

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	CAST("r"."Diagnosis" AS BLOB) STARTING WITH 'hall'

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	Lower("r"."Diagnosis") STARTING WITH 'hall'

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	Lower("r"."Diagnosis") STARTING WITH 'hall'

