BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Task')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Task"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Task')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Task"
			(
				"AdminPartyId" Int                                    NOT NULL,
				"Description"  VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Party')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Party"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Party')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Party"
			(
				"Id"   Int                                    NOT NULL,
				"Name" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PartyAccess')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PartyAccess"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PartyAccess')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "PartyAccess"
			(
				"PartyId" Int                                    NOT NULL,
				"Role"    VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"task_1"."Description",
	"party_1"."Name"
FROM
	"Task" "task_1"
		LEFT JOIN "Party" "party_1" ON "task_1"."AdminPartyId" = "party_1"."Id" OR  EXISTS (
			SELECT
				*
			FROM
				"PartyAccess" "pa"
			WHERE
				"pa"."PartyId" = "party_1"."Id" AND "pa"."Role" = 'Admin'
		)

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PartyAccess')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PartyAccess"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Party')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Party"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Task')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Task"';
END

