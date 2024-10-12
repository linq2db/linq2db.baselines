BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

ALTER SEQUENCE "Person_PersonID_seq" RESTART WITH 5

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @FirstName Text(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName Text(7) -- String
SET     @LastName = 'Shepard'
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
RETURNING 
	"PersonID"

