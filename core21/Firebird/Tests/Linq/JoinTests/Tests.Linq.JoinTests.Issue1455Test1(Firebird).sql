BeforeExecute
-- Firebird

CREATE TABLE "Alert"
(
	"AlertKey"     VarChar(255) CHARACTER SET UNICODE_FSS,
	"AlertCode"    VarChar(255) CHARACTER SET UNICODE_FSS,
	"CreationDate" TimeStamp
)

BeforeExecute
-- Firebird

CREATE TABLE "AuditAlert"
(
	"CreationDate"    TimeStamp,
	"AlertCode"       VarChar(255) CHARACTER SET UNICODE_FSS,
	"AlertKey"        VarChar(255) CHARACTER SET UNICODE_FSS,
	"TransactionDate" TimeStamp
)

BeforeExecute
-- Firebird

CREATE TABLE "Trade"
(
	"DealId"       Int                                    NOT NULL,
	"ParcelId"     Int                                    NOT NULL,
	"CounterParty" VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird

CREATE TABLE "Nomin"
(
	"CargoId"              Int                                    NOT NULL,
	"DeliveryId"           Int                                    NOT NULL,
	"DeliveryCounterParty" VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird

CREATE TABLE "Flat"
(
	"AlertKey"             VarChar(255) CHARACTER SET UNICODE_FSS,
	"AlertCode"            VarChar(255) CHARACTER SET UNICODE_FSS,
	"CargoId"              Int,
	"DeliveryId"           Int,
	"DeliveryCounterParty" VarChar(255) CHARACTER SET UNICODE_FSS,
	"DealId"               Int,
	"ParcelId"             Int,
	"CounterParty"         VarChar(255) CHARACTER SET UNICODE_FSS,
	"TransactionDate"      TimeStamp
)

BeforeExecute
-- Firebird

DROP TABLE "Flat"

BeforeExecute
-- Firebird

DROP TABLE "Nomin"

BeforeExecute
-- Firebird

DROP TABLE "Trade"

BeforeExecute
-- Firebird

DROP TABLE "AuditAlert"

BeforeExecute
-- Firebird

DROP TABLE "Alert"

