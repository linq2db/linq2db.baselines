﻿BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4193Person')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4193Person"';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4
DECLARE @Name VarChar(3) -- String
SET     @Name = 'foo'
DECLARE @EmployeeId Integer -- Int32
SET     @EmployeeId = 1

INSERT INTO "Issue4193Person"
(
	"Name",
	"EmployeeId"
)
VALUES
(
	@Name,
	@EmployeeId
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 3

UPDATE
	"Issue4193Person" "x"
SET
	"Name" = 'new_name'
WHERE
	"x"."EmployeeId" = 1
ORDER BY
	"x"."EmployeeId"
ROWS @take
RETURNING
	NEW."EmployeeId",
	NEW."Name"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4193Person')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4193Person"';
END

