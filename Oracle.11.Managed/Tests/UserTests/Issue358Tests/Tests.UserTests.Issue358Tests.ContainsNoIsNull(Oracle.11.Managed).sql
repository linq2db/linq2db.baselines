BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."MyEnum",
	p."MyEnum2"
FROM
	"TestIssue358Class" p
WHERE
	p."MyEnum2" NOT IN (1)

