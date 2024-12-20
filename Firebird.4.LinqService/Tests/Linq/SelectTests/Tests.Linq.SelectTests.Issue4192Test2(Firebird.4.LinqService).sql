﻿BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4192TableNullable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4192TableNullable"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4192TableNullable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4192TableNullable"
			(
				"Name"     VarChar(255) CHARACTER SET UNICODE_FSS,
				"ParentId" Int
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @parentId Integer -- Int32
SET     @parentId = 12

SELECT
	"i"."Name",
	"i"."ParentId"
FROM
	"Issue4192TableNullable" "i"
WHERE
	"i"."ParentId" = @parentId

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4192TableNullable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4192TableNullable"';
END

