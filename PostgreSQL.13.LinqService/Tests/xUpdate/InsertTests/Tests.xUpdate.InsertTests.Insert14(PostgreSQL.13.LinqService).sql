BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

DELETE FROM
	"Person" p
WHERE
	p."FirstName" LIKE 'Insert14%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

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

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE 'Insert14%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

DELETE FROM
	"Person" p
WHERE
	p."FirstName" LIKE 'Insert14%' ESCAPE '~'

