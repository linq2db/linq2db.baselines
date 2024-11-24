BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3140Parent')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3140Parent"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3140Parent')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue3140Parent"
			(
				"Id"      Int NOT NULL,
				"ChildId" Int NOT NULL,

				CONSTRAINT "PK_Issue3140Parent" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3140Child')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3140Child"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3140Child')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue3140Child"
			(
				"Id"   Int                                    NOT NULL,
				"Name" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_Issue3140Child" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."ChildId",
	"a_Child"."Id",
	"a_Child"."Name"
FROM
	"Issue3140Parent" "t1"
		LEFT JOIN "Issue3140Child" "a_Child" ON "t1"."ChildId" = "a_Child"."Id"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3140Child')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3140Child"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3140Parent')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3140Parent"';
END

