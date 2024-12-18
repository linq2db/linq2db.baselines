BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue76Entity')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue76Entity"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue76Entity')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue76Entity"
			(
				"Id"       BigInt                                 NOT NULL,
				"Caption"  VarChar(255) CHARACTER SET UNICODE_FSS,
				"ParentId" BigInt
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"f"."Id",
	"f"."Caption",
	"f"."ParentId",
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Issue76Entity" "f2"
			WHERE
				"f2"."ParentId" = "f"."Id" AND "f2"."ParentId" IS NOT NULL
		)
			THEN '1'
		ELSE '0'
	END
FROM
	"Issue76Entity" "f"
		INNER JOIN "Issue76Entity" "folder2" ON "f"."ParentId" = "folder2"."Id"
WHERE
	"folder2"."Caption" = 'dewde' AND "folder2"."Caption" IS NOT NULL

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue76Entity')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue76Entity"';
END

