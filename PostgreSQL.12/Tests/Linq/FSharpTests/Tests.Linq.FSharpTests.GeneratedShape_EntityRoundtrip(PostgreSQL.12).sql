-- PostgreSQL.12 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @FirstName Varchar(4) -- String
SET     @FirstName = 'John'
DECLARE @MiddleName Text(1) -- String
SET     @MiddleName = 'Q'
DECLARE @Age Integer -- Int32
SET     @Age = 42

INSERT INTO "GeneratedScaffoldPerson"
(
	"PersonID",
	"FirstName",
	"MiddleName",
	"Age"
)
VALUES
(
	:Id,
	:FirstName,
	:MiddleName,
	:Age
)

-- PostgreSQL.12 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @FirstName Varchar(4) -- String
SET     @FirstName = 'Jane'
DECLARE @MiddleName Text -- String
SET     @MiddleName = NULL
DECLARE @Age Integer -- Int32
SET     @Age = NULL

INSERT INTO "GeneratedScaffoldPerson"
(
	"PersonID",
	"FirstName",
	"MiddleName",
	"Age"
)
VALUES
(
	:Id,
	:FirstName,
	:MiddleName,
	:Age
)

-- PostgreSQL.12 PostgreSQL12
SELECT
	p."PersonID",
	p."FirstName",
	p."MiddleName",
	p."Age"
FROM
	"GeneratedScaffoldPerson" p
WHERE
	p."PersonID" = 1
LIMIT 2

-- PostgreSQL.12 PostgreSQL12
SELECT
	p."PersonID",
	p."FirstName",
	p."MiddleName",
	p."Age"
FROM
	"GeneratedScaffoldPerson" p
WHERE
	p."PersonID" = 2
LIMIT 2

