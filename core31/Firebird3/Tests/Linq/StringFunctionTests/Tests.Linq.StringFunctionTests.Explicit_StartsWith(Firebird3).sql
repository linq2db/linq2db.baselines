BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Patient" "r"
WHERE
	CAST("r"."Diagnosis" AS BLOB) STARTING WITH 'Hall'

BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Patient" "r"
WHERE
	CAST("r"."Diagnosis" AS BLOB) STARTING WITH 'hall'

BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Patient" "r"
WHERE
	Lower("r"."Diagnosis") STARTING WITH 'hall'

BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Patient" "r"
WHERE
	Lower("r"."Diagnosis") STARTING WITH 'hall'

