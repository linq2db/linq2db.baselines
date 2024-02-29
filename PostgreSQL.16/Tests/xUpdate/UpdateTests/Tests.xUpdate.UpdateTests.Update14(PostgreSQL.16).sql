BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @FirstName Text(8) -- String
SET     @FirstName = 'Update14'
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

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @name Text(8) -- String
SET     @name = 'Update14'
DECLARE @idx Integer -- Int32
SET     @idx = 4

UPDATE
	"Person"
SET
	"LastName" = Cast((Length(:name) + :idx) as text)
WHERE
	"Person"."FirstName" LIKE 'Update14%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Count(*)
FROM
	"Person" t1
WHERE
	t1."FirstName" LIKE 'Update14%' ESCAPE '~'

