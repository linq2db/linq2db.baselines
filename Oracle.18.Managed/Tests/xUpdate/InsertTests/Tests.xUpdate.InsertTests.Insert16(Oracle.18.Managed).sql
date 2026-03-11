-- Oracle.18.Managed Oracle.Managed Oracle12

DELETE FROM
	"Person" t1
WHERE
	t1."FirstName" LIKE 'Insert16%' ESCAPE '~'

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @name Int32
SET     @name = 8
DECLARE @idx Int32
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
	CAST(:name + :idx AS VarChar(255)),
	'M'
)

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Person" t1
WHERE
	t1."FirstName" LIKE 'Insert16%' ESCAPE '~'

-- Oracle.18.Managed Oracle.Managed Oracle12

DELETE FROM
	"Person" t1
WHERE
	t1."FirstName" LIKE 'Insert16%' ESCAPE '~'

