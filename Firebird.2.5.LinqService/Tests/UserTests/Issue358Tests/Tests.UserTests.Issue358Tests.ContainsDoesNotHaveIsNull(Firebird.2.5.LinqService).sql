BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"p"."Id",
	"p"."MyEnum",
	"p"."MyEnum2"
FROM
	"TestIssue358Class" "p"
WHERE
	"p"."MyEnum" IN (1)

