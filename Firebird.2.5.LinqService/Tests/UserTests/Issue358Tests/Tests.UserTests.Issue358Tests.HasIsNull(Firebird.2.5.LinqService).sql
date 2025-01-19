BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"p"."MyEnum",
	"p"."MyEnum2"
FROM
	"TestIssue358Class" "p"
WHERE
	"p"."MyEnum" <> 0 OR "p"."MyEnum" IS NULL

