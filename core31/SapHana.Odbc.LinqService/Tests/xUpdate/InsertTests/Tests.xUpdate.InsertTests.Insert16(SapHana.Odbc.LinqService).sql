BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Person" "_"
WHERE
	"_"."FirstName" LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @idx  -- Int32
SET     @idx = 12

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'Insert16',
	Cast(? as NVarChar(11)),
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

