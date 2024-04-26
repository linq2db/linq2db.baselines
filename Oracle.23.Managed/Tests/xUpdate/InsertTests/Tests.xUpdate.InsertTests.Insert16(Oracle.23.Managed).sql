BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

DELETE FROM
	"Person" t1
WHERE
	t1."FirstName" LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'Insert16',
	CAST(12 AS VarChar(255)),
	'M'
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Person" t1
WHERE
	t1."FirstName" LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

DELETE FROM
	"Person" t1
WHERE
	t1."FirstName" LIKE 'Insert16%' ESCAPE '~'

