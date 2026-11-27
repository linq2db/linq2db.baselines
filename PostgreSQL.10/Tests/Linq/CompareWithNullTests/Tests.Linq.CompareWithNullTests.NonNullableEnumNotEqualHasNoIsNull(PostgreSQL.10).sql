-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	p."Id",
	p."MyEnum",
	p."MyEnum2"
FROM
	"EnumFilterEntity" p
WHERE
	p."MyEnum2" <> 0

