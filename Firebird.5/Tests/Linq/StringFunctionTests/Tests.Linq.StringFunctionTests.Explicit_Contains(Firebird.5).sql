-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	CAST("r"."Diagnosis" AS BLOB) LIKE '%Paranoid%' ESCAPE '~'

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	CAST("r"."Diagnosis" AS BLOB) LIKE '%paranoid%' ESCAPE '~'

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	"r"."Diagnosis" CONTAINING 'paranoid'

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	"r"."Diagnosis" CONTAINING 'Paranoid'

