BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

DELETE FROM
	"Person" t1
WHERE
	t1."FirstName" LIKE 'Insert15%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @Gender Text(1) -- String
SET     @Gender = 'M'
DECLARE @Name_FirstName Text(8) -- String
SET     @Name_FirstName = 'Insert15'
DECLARE @Name_MiddleName Text -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName Text(8) -- String
SET     @Name_LastName = 'Insert15'

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	COUNT(*)
FROM
	"Person" t1
WHERE
	t1."FirstName" LIKE 'Insert15%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

DELETE FROM
	"Person" t1
WHERE
	t1."FirstName" LIKE 'Insert15%' ESCAPE '~'

