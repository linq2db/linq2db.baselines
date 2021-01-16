BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "User"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Resource"
(
	"Id"                 Int NOT NULL,
	"AssociatedObjectId" Int NOT NULL,
	"AssociationTypeId"  Int
)

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Lookup"
(
	"Id"   Int                                    NOT NULL,
	"Type" VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "Lookup"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "Resource"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "User"

