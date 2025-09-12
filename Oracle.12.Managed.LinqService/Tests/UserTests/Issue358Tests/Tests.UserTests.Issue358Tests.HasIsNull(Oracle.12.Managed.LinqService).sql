BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	p."Id",
	p."MyEnum",
	p."MyEnum2"
FROM
	"TestIssue358Class" p
WHERE
	p."MyEnum" <> 0 OR p."MyEnum" IS NULL

