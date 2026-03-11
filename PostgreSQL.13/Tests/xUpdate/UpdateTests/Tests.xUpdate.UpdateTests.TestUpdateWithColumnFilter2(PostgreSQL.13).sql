-- PostgreSQL.13 PostgreSQL
DECLARE @FirstName Text(18) -- String
SET     @FirstName = 'UpdateColumnFilter'
DECLARE @LastName Text(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName Text -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'

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

-- PostgreSQL.13 PostgreSQL
DECLARE @FirstName Text(18) -- String
SET     @FirstName = 'UpdateColumnFilter'

SELECT
	x."FirstName",
	x."PersonID",
	x."LastName",
	x."MiddleName",
	x."Gender"
FROM
	"Person" x
WHERE
	x."FirstName" = :FirstName
LIMIT 2

-- PostgreSQL.13 PostgreSQL
DECLARE @FirstName Text(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	"Person"
SET
	"FirstName" = :FirstName
WHERE
	"Person"."PersonID" = :ID

-- PostgreSQL.13 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 5

SELECT
	x."FirstName",
	x."PersonID",
	x."LastName",
	x."MiddleName",
	x."Gender"
FROM
	"Person" x
WHERE
	x."PersonID" = :ID
LIMIT 2

-- PostgreSQL.13 PostgreSQL
DECLARE @FirstName Text(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @LastName Text(25) -- String
SET     @LastName = 'UpdateColumnFilterUpdated'
DECLARE @MiddleName Text -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'
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

-- PostgreSQL.13 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 5

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
WHERE
	t1."PersonID" = :ID
LIMIT 2

