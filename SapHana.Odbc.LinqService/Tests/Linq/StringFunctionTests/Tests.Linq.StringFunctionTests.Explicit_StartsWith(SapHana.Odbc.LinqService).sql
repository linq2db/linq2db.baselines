BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	"r"."Diagnosis" LIKE 'Hall%' ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	"r"."Diagnosis" LIKE 'hall%' ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	Lower("r"."Diagnosis") LIKE 'hall%' ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	Lower("r"."Diagnosis") LIKE 'hall%' ESCAPE '~'

