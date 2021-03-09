BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = -1

UPDATE
	"Person"
SET
	"LastName" = 'test'
FROM
	"Patient" pat,
	"Person" "a_Person"
WHERE
	pat."PersonID" = :id AND pat."PersonID" = "a_Person"."PersonID" AND
	"Person"."PersonID" = "a_Person"."PersonID"

