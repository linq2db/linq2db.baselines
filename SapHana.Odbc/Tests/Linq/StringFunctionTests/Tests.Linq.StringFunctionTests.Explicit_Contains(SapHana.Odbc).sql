-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	"r"."Diagnosis" LIKE '%Paranoid%' ESCAPE '~'

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	"r"."Diagnosis" LIKE '%paranoid%' ESCAPE '~'

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	Lower("r"."Diagnosis") LIKE '%paranoid%' ESCAPE '~'

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	Lower("r"."Diagnosis") LIKE '%paranoid%' ESCAPE '~'

