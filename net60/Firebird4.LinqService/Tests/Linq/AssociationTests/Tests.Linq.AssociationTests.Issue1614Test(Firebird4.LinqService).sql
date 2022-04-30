BeforeExecute
-- Firebird4 Firebird

CREATE TABLE "User"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- Firebird4 Firebird

CREATE TABLE "Resource"
(
	"Id"                 Int NOT NULL,
	"AssociatedObjectId" Int NOT NULL,
	"AssociationTypeId"  Int
)

BeforeExecute
-- Firebird4 Firebird

CREATE TABLE "Lookup"
(
	"Id"   Int                                    NOT NULL,
	"Type" VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t1"."Id",
	"t1"."AssociatedObjectId",
	"t1"."AssociationTypeId",
	"c_1"."Id"
FROM
	"Resource" "t1"
		LEFT JOIN "Lookup" "a_AssociationTypeCode" ON "t1"."AssociationTypeId" = "a_AssociationTypeCode"."Id"
		LEFT JOIN "User" "c_1" ON "a_AssociationTypeCode"."Type" = 'us' AND "c_1"."Id" = "t1"."AssociatedObjectId"

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Lookup')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Lookup"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Resource')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Resource"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'User')) THEN
		EXECUTE STATEMENT 'DROP TABLE "User"';
END

