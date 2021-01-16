BeforeExecute
-- Firebird

CREATE TABLE "User"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- Firebird

CREATE TABLE "Resource"
(
	"Id"                 Int NOT NULL,
	"AssociatedObjectId" Int NOT NULL,
	"AssociationTypeId"  Int
)

BeforeExecute
-- Firebird

CREATE TABLE "Lookup"
(
	"Id"   Int                                    NOT NULL,
	"Type" VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird

DROP TABLE "Lookup"

BeforeExecute
-- Firebird

DROP TABLE "Resource"

BeforeExecute
-- Firebird

DROP TABLE "User"

