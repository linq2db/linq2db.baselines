BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Person" "_"
WHERE
	"_"."FirstName" LIKE 'Insert16%' ESCAPE '~'

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
	'Insert16',
	CAST(12 AS NVarChar(11)),
	'M'
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Count(*)
FROM
	"Person" "_"
WHERE
	"_"."FirstName" LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Person" "_"
WHERE
	"_"."FirstName" LIKE 'Insert16%' ESCAPE '~'

