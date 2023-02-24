BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Alert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Alert"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Alert')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Alert"
			(
				"AlertKey"     VarChar(255) CHARACTER SET UNICODE_FSS,
				"AlertCode"    VarChar(255) CHARACTER SET UNICODE_FSS,
				"CreationDate" TimeStamp
			)
		';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AuditAlert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AuditAlert"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AuditAlert')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "AuditAlert"
			(
				"AlertKey"        VarChar(255) CHARACTER SET UNICODE_FSS,
				"AlertCode"       VarChar(255) CHARACTER SET UNICODE_FSS,
				"CreationDate"    TimeStamp,
				"TransactionDate" TimeStamp
			)
		';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Trade')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Trade"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Trade')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Trade"
			(
				"DealId"       Int                                    NOT NULL,
				"ParcelId"     Int                                    NOT NULL,
				"CounterParty" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Nomin')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Nomin"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Nomin')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Nomin"
			(
				"CargoId"              Int                                    NOT NULL,
				"DeliveryId"           Int                                    NOT NULL,
				"DeliveryCounterParty" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Flat')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Flat"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Flat')) THEN
		EXECUTE STATEMENT '
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
		';
END

BeforeExecute
-- Firebird3 Firebird
DECLARE @cpty_1 VarChar(3) -- String
SET     @cpty_1 = '%C%'
DECLARE @cpty_2 VarChar(3) -- String
SET     @cpty_2 = '%C%'
DECLARE @cpty_3 VarChar(3) -- String
SET     @cpty_3 = '%C%'

SELECT
	"al_1"."alert",
	"al_1"."alert_1",
	"al_1"."alert_2"
FROM
	(
		SELECT
			"al"."AlertKey" as "alert",
			"al"."AlertCode" as "alert_1",
			"al"."CreationDate" as "alert_2"
		FROM
			"Alert" "al"
				LEFT JOIN "AuditAlert" "au1" ON ("au1"."AlertKey" = "al"."AlertKey" OR "au1"."AlertKey" IS NULL AND "al"."AlertKey" IS NULL) AND ("au1"."AlertCode" = "au1"."AlertCode" OR "au1"."AlertCode" IS NULL AND "au1"."AlertCode" IS NULL)
		GROUP BY
			"al"."AlertKey",
			"al"."AlertCode",
			"al"."CreationDate"
	) "al_1"
		LEFT JOIN "Trade" "trade1" ON "al_1"."alert" = Cast("trade1"."DealId" as VarChar(11) CHARACTER SET UNICODE_FSS)
		LEFT JOIN "Nomin" "nomin1" ON "al_1"."alert" = Cast("nomin1"."CargoId" as VarChar(11) CHARACTER SET UNICODE_FSS)
WHERE
	(("nomin1"."DeliveryCounterParty" LIKE @cpty_1 ESCAPE '~' OR "trade1"."CounterParty" LIKE @cpty_2 ESCAPE '~') OR "al_1"."alert_1" LIKE @cpty_3 ESCAPE '~')
GROUP BY
	"al_1"."alert",
	"al_1"."alert_1",
	"al_1"."alert_2"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Flat')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Flat"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Nomin')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Nomin"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Trade')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Trade"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AuditAlert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AuditAlert"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Alert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Alert"';
END

