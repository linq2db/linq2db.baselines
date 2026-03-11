-- PostgreSQL.13 PostgreSQL
DECLARE @Gender Text(1) -- String
SET     @Gender = 'M'
DECLARE @FirstName Varchar(12) -- String
SET     @FirstName = 'FirstName533'
DECLARE @MiddleName Varchar -- String
SET     @MiddleName = NULL
DECLARE @LastName Varchar(11) -- String
SET     @LastName = 'LastName533'

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

-- PostgreSQL.13 PostgreSQL
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

