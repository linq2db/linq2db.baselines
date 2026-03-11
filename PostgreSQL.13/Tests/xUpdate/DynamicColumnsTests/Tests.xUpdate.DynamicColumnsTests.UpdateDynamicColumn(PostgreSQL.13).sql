-- PostgreSQL.13 PostgreSQL

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'John',
	'Limonadovy',
	'M'
)

-- PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Person" c_1
WHERE
	c_1."LastName" = 'Limonadovy'

-- PostgreSQL.13 PostgreSQL

UPDATE
	"Person"
SET
	"FirstName" = 'Johnny'
WHERE
	"Person"."LastName" = 'Limonadovy'

-- PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Person" c_1
WHERE
	c_1."FirstName" = 'Johnny' AND c_1."LastName" = 'Limonadovy'

