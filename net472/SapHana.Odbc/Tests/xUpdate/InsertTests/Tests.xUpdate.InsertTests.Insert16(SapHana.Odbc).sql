BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Person" "_"
WHERE
	"_"."FirstName" LIKE 'Insert16%'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @name NVarChar(8) -- String
SET     @name = 'Insert16'
DECLARE @idx  -- Int32
SET     @idx = 4

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'Insert16',
	Cast((Length(?) + ?) as NVarChar(11)),
	'M'
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Count(*)
FROM
	"Person" "_"
WHERE
	"_"."FirstName" LIKE 'Insert16%'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Person" "_"
WHERE
	"_"."FirstName" LIKE 'Insert16%'

