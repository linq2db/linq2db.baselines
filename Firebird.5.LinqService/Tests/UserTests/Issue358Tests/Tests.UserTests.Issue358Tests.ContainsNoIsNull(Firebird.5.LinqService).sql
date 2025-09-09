BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"p"."MyEnum",
	"p"."MyEnum2"
FROM
	"TestIssue358Class" "p"
WHERE
	"p"."MyEnum2" NOT IN (1)

