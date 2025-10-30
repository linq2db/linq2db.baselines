BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @Gender Text(1) -- String
SET     @Gender = 'M'
DECLARE @FirstName Text(1) -- String
SET     @FirstName = 'a'
DECLARE @MiddleName Text(1) -- String
SET     @MiddleName = 'A'
DECLARE @LastName Text(1) -- String
SET     @LastName = 'b'

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

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @Gender Text(1) -- String
SET     @Gender = 'M'
DECLARE @FirstName Text(1) -- String
SET     @FirstName = 'c'
DECLARE @MiddleName Unknown -- Object
SET     @MiddleName = NULL
DECLARE @LastName Text(1) -- String
SET     @LastName = 'd'

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

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @id1 Integer -- Int32
SET     @id1 = 5

SELECT
	t1."PersonID",
	t1."Gender",
	t1."FirstName",
	t1."MiddleName",
	t1."LastName"
FROM
	"Person" t1
WHERE
	t1."PersonID" = :id1
LIMIT 1

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @id2 Integer -- Int32
SET     @id2 = 6

SELECT
	t1."PersonID",
	t1."Gender",
	t1."FirstName",
	t1."MiddleName",
	t1."LastName"
FROM
	"Person" t1
WHERE
	t1."PersonID" = :id2
LIMIT 1

