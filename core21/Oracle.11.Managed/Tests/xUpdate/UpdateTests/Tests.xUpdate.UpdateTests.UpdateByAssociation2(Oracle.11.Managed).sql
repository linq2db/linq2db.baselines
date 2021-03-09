BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @id Int32
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
			"Patient" pat
				INNER JOIN "Person" a_Person ON pat."PersonID" = a_Person."PersonID"
		WHERE
			pat."PersonID" = :id AND "Person"."PersonID" = a_Person."PersonID"
	)

