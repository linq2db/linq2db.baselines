-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Person" p
WHERE
	p."FirstName" LIKE 'Insert14%' ESCAPE '~'

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'Insert14' || (
		SELECT
			p."FirstName"
		FROM
			"Person" p
		WHERE
			p."PersonID" = 1
	),
	'Shepard',
	'M'
)

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE 'Insert14%' ESCAPE '~'

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Person" p
WHERE
	p."FirstName" LIKE 'Insert14%' ESCAPE '~'

