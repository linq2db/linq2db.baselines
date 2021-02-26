BeforeExecute
-- Oracle.Managed Oracle12
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
			"Person" t1
				LEFT JOIN "Patient" a_Patient ON t1."PersonID" = a_Patient."PersonID"
				LEFT JOIN "Person" a_Person ON a_Patient."PersonID" = a_Person."PersonID"
		WHERE
			t1."PersonID" = :id AND "Person"."PersonID" = t1."PersonID"
	)

