BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Gender Text(1) -- String
SET     @Gender = 'M'
DECLARE @Name_FirstName Text(13) -- String
SET     @Name_FirstName = 'UpdateComplex'
DECLARE @Name_MiddleName Text -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName Text(5) -- String
SET     @Name_LastName = 'Empty'

INSERT INTO "Person"
(
	"Gender",
	"FirstName",
	"MiddleName",
	"LastName"
)
VALUES
(
	:Gender,
	:Name_FirstName,
	:Name_MiddleName,
	:Name_LastName
)
RETURNING 
	"PersonID"

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @nullableGender Text(1) -- String
SET     @nullableGender = 'O'

UPDATE
	"Person"
SET
	"Gender" = :nullableGender
WHERE
	"Person"."FirstName" LIKE 'UpdateComplex%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT
	t1."PersonID",
	t1."Gender",
	t1."FirstName",
	t1."MiddleName",
	t1."LastName"
FROM
	"Person" t1
WHERE
	t1."PersonID" = :id
LIMIT 1

