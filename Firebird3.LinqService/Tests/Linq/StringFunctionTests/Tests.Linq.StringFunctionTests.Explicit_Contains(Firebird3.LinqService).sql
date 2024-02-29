BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Patient" "r"
WHERE
	CAST("r"."Diagnosis" AS BLOB) LIKE '%Paranoid%' ESCAPE '~'

BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Patient" "r"
WHERE
	CAST("r"."Diagnosis" AS BLOB) LIKE '%paranoid%' ESCAPE '~'

BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Patient" "r"
WHERE
	"r"."Diagnosis" CONTAINING 'paranoid'

BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Patient" "r"
WHERE
	"r"."Diagnosis" CONTAINING 'Paranoid'

