BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = -1

UPDATE
	"Person"
SET
	"Person"."LastName" = 'test'
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Person" "_"
				LEFT JOIN "Patient" "a_Patient" ON "_"."PersonID" = "a_Patient"."PersonID"
				LEFT JOIN "Person" "a_Person" ON "a_Patient"."PersonID" = "a_Person"."PersonID"
		WHERE
			"_"."PersonID" = ? AND "Person"."PersonID" = "_"."PersonID"
	)

