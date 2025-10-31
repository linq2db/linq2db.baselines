-- PostgreSQL.18 PostgreSQL

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'John',
	'The Dynamic',
	'M'
)

-- PostgreSQL.18 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Person" c_1
WHERE
	c_1."FirstName" = 'John' AND c_1."LastName" = 'The Dynamic'

