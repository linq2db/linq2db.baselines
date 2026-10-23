-- PostgreSQL.11 PostgreSQL
SELECT
	p."Id",
	p."MyEnum",
	p."MyEnum2"
FROM
	"TestIssue358Class" p
WHERE
	p."MyEnum2" <> 0

