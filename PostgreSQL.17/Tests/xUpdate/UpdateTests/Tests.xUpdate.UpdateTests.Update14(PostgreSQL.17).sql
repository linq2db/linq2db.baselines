BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @name Integer -- Int32
SET     @name = 8
DECLARE @idx Integer -- Int32
SET     @idx = 4

UPDATE
	"Person"
SET
	"LastName" = (:name + :idx)::text
WHERE
	"Person"."FirstName" LIKE 'Update14%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Person" t1
WHERE
	t1."FirstName" LIKE 'Update14%' ESCAPE '~'

