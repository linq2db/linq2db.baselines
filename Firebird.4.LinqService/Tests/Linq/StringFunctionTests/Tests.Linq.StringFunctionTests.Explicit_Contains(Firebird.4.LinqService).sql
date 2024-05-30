BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	CAST("r"."Diagnosis" AS BLOB) LIKE '%Paranoid%' ESCAPE '~'

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	CAST("r"."Diagnosis" AS BLOB) LIKE '%paranoid%' ESCAPE '~'

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	"r"."Diagnosis" CONTAINING 'paranoid'

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	"r"."Diagnosis" CONTAINING 'Paranoid'

