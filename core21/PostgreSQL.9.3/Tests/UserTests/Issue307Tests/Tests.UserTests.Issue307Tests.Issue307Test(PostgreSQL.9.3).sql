BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

ALTER SEQUENCE "Person_PersonID_seq" RESTART WITH 5

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > 4

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
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

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > 4

