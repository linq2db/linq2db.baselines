BeforeExecute
-- Firebird

CREATE TABLE "Person2562"
(
	"CardTypeId" Int                                    NOT NULL,
	"CardNumber" VarChar(255) CHARACTER SET UNICODE_FSS,
	"Lics"       VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird

CREATE TABLE "ExternalId2562"
(
	"CardTypeId" Int                                    NOT NULL,
	"CardNumber" VarChar(255) CHARACTER SET UNICODE_FSS,
	"TypeId"     Int                                    NOT NULL,
	"Id"         VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird

DROP TABLE "ExternalId2562"

BeforeExecute
-- Firebird

DROP TABLE "Person2562"

