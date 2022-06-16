BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	Max(p."PersonID")
FROM
	"Person" p

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	p."PersonID",
	p."Gender",
	p."FirstName",
	p."MiddleName",
	p."LastName"
FROM
	"Person" p
WHERE
	p."PersonID" > 4
LIMIT :take

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > 4

