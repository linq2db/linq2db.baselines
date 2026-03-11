-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @FirstName Text(21) -- String
SET     @FirstName = 'test_inherited_insert'
DECLARE @LastName Text(4) -- String
SET     @LastName = 'test'
DECLARE @MiddleName Text(4) -- String
SET     @MiddleName = 'test'
DECLARE @Gender Char(1) -- String
SET     @Gender = 'U'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	:FirstName,
	:LastName,
	:MiddleName,
	:Gender
)
RETURNING 
	"PersonID"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
WHERE
	t1."FirstName" = 'test_inherited_insert'
LIMIT 1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @FirstName Text(21) -- String
SET     @FirstName = 'test_inherited_insert'
DECLARE @LastName Text(4) -- String
SET     @LastName = 'test'
DECLARE @MiddleName Text(4) -- String
SET     @MiddleName = 'test'
DECLARE @Gender Char(1) -- String
SET     @Gender = 'U'
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	"Person"
SET
	"FirstName" = :FirstName,
	"LastName" = :LastName,
	"MiddleName" = :MiddleName,
	"Gender" = :Gender
WHERE
	"Person"."PersonID" = :ID

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
WHERE
	t1."FirstName" = 'test_inherited_insert'
LIMIT 1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 5

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" = :ID

