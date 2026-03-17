-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Patient" "p"
WHERE
	"p"."Diagnosis" LIKE '%Persecution' ESCAPE '~' AND
	"p"."PersonID" = 2

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Patient" "p"
WHERE
	"p"."Diagnosis" NOT LIKE '%Persecution' ESCAPE '~' AND
	"p"."PersonID" = 2

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Patient" "p"
WHERE
	"p"."Diagnosis" LIKE '%persecution' ESCAPE '~' AND
	"p"."PersonID" = 2

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Patient" "p"
WHERE
	"p"."Diagnosis" NOT LIKE '%persecution' ESCAPE '~' AND
	"p"."PersonID" = 2

