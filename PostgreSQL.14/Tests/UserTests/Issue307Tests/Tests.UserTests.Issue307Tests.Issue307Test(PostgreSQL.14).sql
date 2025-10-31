-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Gender Text(1) -- String
SET     @Gender = 'M'
DECLARE @FirstName Text(12) -- String
SET     @FirstName = 'FirstName307'
DECLARE @MiddleName Text -- String
SET     @MiddleName = NULL
DECLARE @LastName Text(11) -- String
SET     @LastName = 'LastName307'

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
	:FirstName,
	:MiddleName,
	:LastName
)
RETURNING 
	"PersonID"

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
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

