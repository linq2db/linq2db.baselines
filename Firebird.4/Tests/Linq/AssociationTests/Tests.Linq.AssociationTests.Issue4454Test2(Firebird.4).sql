BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4454Client')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4454Client"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4454Client')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4454Client"
			(
				"Id"   Int                                    NOT NULL,
				"Name" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4454Service')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4454Service"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4454Service')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4454Service"
			(
				"Id"       Int NOT NULL,
				"IdClient" Int
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"a_Client2"."Name"
FROM
	"Issue4454Service" "s"
		INNER JOIN "Issue4454Client" "a_Client2" ON "a_Client2"."Id" = "s"."IdClient"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4454Service')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4454Service"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4454Client')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4454Client"';
END

