-- PostgreSQL.9.3 PostgreSQL
SELECT
	p."Id",
	p."MyEnum",
	p."MyEnum2"
FROM
	"EnumFilterEntity" p
WHERE
	p."MyEnum2" <> 0

