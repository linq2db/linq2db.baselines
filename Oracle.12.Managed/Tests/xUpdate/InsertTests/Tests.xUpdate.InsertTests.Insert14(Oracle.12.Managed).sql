BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

DELETE FROM
	"Person" p
WHERE
	p."FirstName" LIKE 'Insert14%' ESCAPE '~'

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE 'Insert14%' ESCAPE '~'

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

DELETE FROM
	"Person" p
WHERE
	p."FirstName" LIKE 'Insert14%' ESCAPE '~'

