BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	p."Id",
	p."MyEnum",
	p."MyEnum2"
FROM
	"TestIssue358Class" p
WHERE
	p."MyEnum2" <> 0

