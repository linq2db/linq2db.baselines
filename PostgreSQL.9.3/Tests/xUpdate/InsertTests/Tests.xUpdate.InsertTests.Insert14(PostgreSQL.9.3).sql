-- PostgreSQL.9.3 PostgreSQL
DELETE FROM
	"Person" p
WHERE
	p."FirstName" LIKE 'Insert14%' ESCAPE '~'

-- PostgreSQL.9.3 PostgreSQL
INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'Insert14' || Coalesce((
		SELECT
			p."FirstName"
		FROM
			"Person" p
		WHERE
			p."PersonID" = 1
	), ''),
	'Shepard',
	'M'
)

-- PostgreSQL.9.3 PostgreSQL
SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE 'Insert14%' ESCAPE '~'

-- PostgreSQL.9.3 PostgreSQL
DELETE FROM
	"Person" p
WHERE
	p."FirstName" LIKE 'Insert14%' ESCAPE '~'

