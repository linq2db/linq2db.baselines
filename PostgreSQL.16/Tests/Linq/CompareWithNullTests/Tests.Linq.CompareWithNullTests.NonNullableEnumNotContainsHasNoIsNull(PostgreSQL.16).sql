-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	p."Id",
	p."MyEnum",
	p."MyEnum2"
FROM
	"EnumFilterEntity" p
WHERE
	p."MyEnum2" NOT IN (1)

