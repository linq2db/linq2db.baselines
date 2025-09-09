BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	p."MyEnum",
	p."MyEnum2"
FROM
	"TestIssue358Class" p
WHERE
	p."MyEnum" <> 0 OR p."MyEnum" IS NULL

