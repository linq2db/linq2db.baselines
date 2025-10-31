-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
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

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
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

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Gender Text(1) -- String
SET     @Gender = 'M'
DECLARE @Name_FirstName Text(13) -- String
SET     @Name_FirstName = 'UpdateComplex'
DECLARE @Name_MiddleName Text -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName Text(13) -- String
SET     @Name_LastName = 'UpdateComplex'
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	"Person"
SET
	"Gender" = :Gender,
	"FirstName" = :Name_FirstName,
	"MiddleName" = :Name_MiddleName,
	"LastName" = :Name_LastName
WHERE
	"Person"."PersonID" = :ID

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
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

