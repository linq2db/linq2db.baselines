-- PostgreSQL.18 PostgreSQL

SELECT
	p."MyEnum",
	p."MyEnum2"
FROM
	"TestIssue358Class" p
WHERE
	p."MyEnum" IN (1)

