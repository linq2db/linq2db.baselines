BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

ALTER SEQUENCE "Person_PersonID_seq" RESTART WITH 5

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > 4

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > 4

