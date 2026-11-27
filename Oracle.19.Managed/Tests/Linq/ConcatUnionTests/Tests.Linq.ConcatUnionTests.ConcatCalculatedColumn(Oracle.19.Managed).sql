-- Oracle.19.Managed Oracle.Managed Oracle12
INSERT INTO "CalculatedColumnSetTable"
(
	"Id",
	"FirstName",
	"LastName",
	"Text"
)
VALUES
(
	1,
	'one',
	'two',
	'text'
)

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Text",
	t1."FirstName" || ' ' || t1."LastName"
FROM
	"CalculatedColumnSetTable" t1
UNION ALL
SELECT
	t2."Id",
	t2."Text",
	t2."FirstName" || ' ' || t2."LastName"
FROM
	"CalculatedColumnSetTable" t2

