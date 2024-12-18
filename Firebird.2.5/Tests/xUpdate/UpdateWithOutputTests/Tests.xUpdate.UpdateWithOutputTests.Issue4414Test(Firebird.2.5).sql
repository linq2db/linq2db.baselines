BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4193Person')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4193Person"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4193Person')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4193Person"
			(
				"Name"       VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,
				"EmployeeId" Int
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Issue4193Person"
(
	"Name",
	"EmployeeId"
)
SELECT CAST('foo' AS VarChar(255) CHARACTER SET UNICODE_FSS),1 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3

UPDATE
	"Issue4193Person" "x"
SET
	"Name" = 'new_name'
WHERE
	"x"."EmployeeId" = 1 AND "x"."EmployeeId" IS NOT NULL
ORDER BY
	"x"."EmployeeId"
ROWS @take
RETURNING
	NEW."EmployeeId",
	NEW."Name"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4193Person')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4193Person"';
END

