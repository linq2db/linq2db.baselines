-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	p."Id",
	p."MyEnum",
	p."MyEnum2"
FROM
	"EnumFilterEntity" p
WHERE
	p."MyEnum" <> 0 OR p."MyEnum" IS NULL

