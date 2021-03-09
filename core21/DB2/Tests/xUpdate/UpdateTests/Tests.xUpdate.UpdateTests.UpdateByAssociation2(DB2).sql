BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
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
			"Patient" "pat"
				INNER JOIN "Person" "a_Person" ON "pat"."PersonID" = "a_Person"."PersonID"
		WHERE
			"pat"."PersonID" = @id AND "Person"."PersonID" = "a_Person"."PersonID"
	)

