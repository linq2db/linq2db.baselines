BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Person" c_1
WHERE
	c_1."LastName" = 'Limonadovy'

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

UPDATE
	"Person"
SET
	"FirstName" = 'Johnny'
WHERE
	"Person"."LastName" = 'Limonadovy'

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Person" c_1
WHERE
	c_1."FirstName" = 'Johnny' AND c_1."LastName" = 'Limonadovy'

