-- PostgreSQL.18 PostgreSQL
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

-- PostgreSQL.18 PostgreSQL

UPDATE
	"Person"
SET
	"LastName" = "Person"."FirstName"
WHERE
	"Person"."FirstName" LIKE 'UpdateComplex%' ESCAPE '~'

-- PostgreSQL.18 PostgreSQL
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

