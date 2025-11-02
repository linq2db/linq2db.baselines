-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	"r"."Diagnosis" LIKE 'Hall%' ESCAPE '~'

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	"r"."Diagnosis" LIKE 'hall%' ESCAPE '~'

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	Lower("r"."Diagnosis") LIKE 'hall%' ESCAPE '~'

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	Lower("r"."Diagnosis") LIKE 'hall%' ESCAPE '~'

