-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

DELETE FROM
	"Person" t1
WHERE
	t1."FirstName" LIKE 'Insert16%' ESCAPE '~'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @name Integer -- Int32
SET     @name = 8
DECLARE @idx Integer -- Int32
SET     @idx = 4

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'Insert16',
	(:name + :idx)::text,
	'M'
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"Person" t1
WHERE
	t1."FirstName" LIKE 'Insert16%' ESCAPE '~'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

DELETE FROM
	"Person" t1
WHERE
	t1."FirstName" LIKE 'Insert16%' ESCAPE '~'

