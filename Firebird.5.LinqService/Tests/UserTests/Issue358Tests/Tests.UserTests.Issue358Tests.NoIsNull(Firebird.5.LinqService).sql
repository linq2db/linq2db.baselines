BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestIssue358Class')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestIssue358Class"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestIssue358Class')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TestIssue358Class"
			(
				"MyEnum"  Int,
				"MyEnum2" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"p"."MyEnum",
	"p"."MyEnum2"
FROM
	"TestIssue358Class" "p"
WHERE
	"p"."MyEnum2" <> 0

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestIssue358Class')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestIssue358Class"';
END

