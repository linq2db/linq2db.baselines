-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	p."Id",
	p."MyEnum",
	p."MyEnum2"
FROM
	"EnumFilterEntity" p
WHERE
	p."MyEnum2" <> 0

