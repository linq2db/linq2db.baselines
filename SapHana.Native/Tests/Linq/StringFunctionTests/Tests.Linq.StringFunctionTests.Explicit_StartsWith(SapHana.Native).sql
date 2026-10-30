-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	"r"."Diagnosis" LIKE 'Hall%' ESCAPE '~'

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	"r"."Diagnosis" LIKE 'hall%' ESCAPE '~'

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	Lower("r"."Diagnosis") LIKE 'hall%' ESCAPE '~'

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	Lower("r"."Diagnosis") LIKE 'hall%' ESCAPE '~'

