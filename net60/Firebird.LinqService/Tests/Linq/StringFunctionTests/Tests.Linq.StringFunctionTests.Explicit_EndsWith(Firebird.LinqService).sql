BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Patient" "r"
WHERE
	CAST("r"."Diagnosis" AS BLOB) LIKE '%Persecution' ESCAPE '~'

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Patient" "r"
WHERE
	CAST("r"."Diagnosis" AS BLOB) LIKE '%persecution' ESCAPE '~'

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Patient" "r"
WHERE
	Lower("r"."Diagnosis") LIKE '%persecution' ESCAPE '~'

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Patient" "r"
WHERE
	Lower("r"."Diagnosis") LIKE '%persecution' ESCAPE '~'

