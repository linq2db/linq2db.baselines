BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'User')) THEN
		EXECUTE STATEMENT 'DROP TABLE "User"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'User')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "User"
			(
				"Id" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Resource')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Resource"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Resource')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Resource"
			(
				"Id"                 Int NOT NULL,
				"AssociatedObjectId" Int NOT NULL,
				"AssociationTypeId"  Int
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Lookup')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Lookup"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Lookup')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Lookup"
			(
				"Id"   Int                                    NOT NULL,
				"Type" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."AssociatedObjectId",
	"t1"."AssociationTypeId",
	"a_User"."Id"
FROM
	"Resource" "t1"
		LEFT JOIN "Lookup" "a_AssociationTypeCode" ON "t1"."AssociationTypeId" = "a_AssociationTypeCode"."Id"
		LEFT JOIN "User" "a_User" ON "a_AssociationTypeCode"."Type" = 'us' AND "a_User"."Id" = "t1"."AssociatedObjectId"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Lookup')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Lookup"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Resource')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Resource"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'User')) THEN
		EXECUTE STATEMENT 'DROP TABLE "User"';
END

