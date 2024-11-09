BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4192TableNotNullable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4192TableNotNullable"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4192TableNotNullable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4192TableNotNullable"
			(
				"Name"     VarChar(255) CHARACTER SET UNICODE_FSS,
				"ParentId" Int                                    NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @parentId Integer -- Int32
SET     @parentId = 12

SELECT
	"i"."Name",
	"i"."ParentId"
FROM
	"Issue4192TableNotNullable" "i"
WHERE
	"i"."ParentId" = @parentId

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4192TableNotNullable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4192TableNotNullable"';
END

