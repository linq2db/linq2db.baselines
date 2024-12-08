BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestIssue358Class')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestIssue358Class"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

SELECT
	"p"."MyEnum",
	"p"."MyEnum2"
FROM
	"TestIssue358Class" "p"
WHERE
	"p"."MyEnum2" NOT IN (1)

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestIssue358Class')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestIssue358Class"';
END

