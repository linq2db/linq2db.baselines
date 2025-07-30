BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	MAX(t1."PersonID")
FROM
	"Person" t1

BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @Gender Text(1) -- String
SET     @Gender = 'M'
DECLARE @Name_FirstName Text(2) -- String
SET     @Name_FirstName = 'fn'
DECLARE @Name_MiddleName Text -- String
SET     @Name_MiddleName = ''
DECLARE @Name_LastName Text(2) -- String
SET     @Name_LastName = 'ln'

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

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	p."PersonID",
	p."FirstName",
	p."MiddleName",
	p."LastName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" > 4
LIMIT 2

BeforeExecute
-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"Person" t
WHERE
	t."PersonID" > 4

