BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE 'Insert14%' ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'Insert14' || (
		SELECT
			"p"."FirstName"
		FROM
			"Person" "p"
		WHERE
			"p"."PersonID" = 1
	),
	'Shepard',
	'M'
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE 'Insert14%' ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE 'Insert14%' ESCAPE '~'

