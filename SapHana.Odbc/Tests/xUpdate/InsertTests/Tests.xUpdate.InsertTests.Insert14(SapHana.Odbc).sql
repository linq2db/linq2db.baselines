-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE 'Insert14%' ESCAPE '~'

-- SapHana.Odbc SapHanaOdbc

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'Insert14' || Coalesce((
		SELECT
			"p"."FirstName"
		FROM
			"Person" "p"
		WHERE
			"p"."PersonID" = 1
	), ''),
	'Shepard',
	'M'
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE 'Insert14%' ESCAPE '~'

-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE 'Insert14%' ESCAPE '~'

