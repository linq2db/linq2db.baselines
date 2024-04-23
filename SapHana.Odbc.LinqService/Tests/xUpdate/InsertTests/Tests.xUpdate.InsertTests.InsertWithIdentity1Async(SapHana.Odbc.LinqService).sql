BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Person" "_"
WHERE
	"_"."PersonID" > 4

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'John',
	'Shepard',
	'M'
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT CURRENT_IDENTITY_VALUE() FROM DUMMY

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Person" "_"
WHERE
	"_"."PersonID" > 4

