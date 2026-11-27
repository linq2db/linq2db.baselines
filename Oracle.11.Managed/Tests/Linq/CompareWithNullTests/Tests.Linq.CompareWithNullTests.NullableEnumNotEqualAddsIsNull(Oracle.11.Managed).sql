-- Oracle.11.Managed Oracle11
SELECT
	p."Id",
	p."MyEnum",
	p."MyEnum2"
FROM
	"EnumFilterEntity" p
WHERE
	p."MyEnum" <> 0 OR p."MyEnum" IS NULL

