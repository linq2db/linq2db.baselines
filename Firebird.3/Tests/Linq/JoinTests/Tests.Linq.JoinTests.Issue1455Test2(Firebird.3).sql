BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Alert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Alert"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Alert')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Alert"
			(
				"AlertKey"     VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,
				"AlertCode"    VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,
				"CreationDate" TimeStamp                              NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AuditAlert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AuditAlert"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AuditAlert')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "AuditAlert"
			(
				"AlertKey"        VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,
				"AlertCode"       VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,
				"CreationDate"    TimeStamp                              NOT NULL,
				"TransactionDate" TimeStamp
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Trade')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Trade"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Nomin')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Nomin"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Flat')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Flat"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3
DECLARE @DeliveryCounterParty VarChar(3) -- String
SET     @DeliveryCounterParty = '%C%'

SELECT
	"al_group_3"."AlertKey",
	"al_group_3"."AlertCode",
	"t2"."LastUpdate_1",
	"t2"."CargoId",
	"t2"."DeliveryId",
	"t2"."DeliveryCounterParty",
	"t2"."DealId",
	"t2"."ParcelId",
	"t2"."CounterParty",
	"t2"."LastUpdate"
FROM
	(
		SELECT
			"al_group_1"."AlertKey",
			"al_group_1"."AlertCode",
			"al_group_1"."CreationDate"
		FROM
			(
				SELECT
					"al_group"."AlertKey",
					"al_group"."AlertCode",
					"al_group"."CreationDate"
				FROM
					"Alert" "al_group"
						LEFT JOIN "AuditAlert" "au" ON "au"."AlertKey" = "al_group"."AlertKey"
				GROUP BY
					"al_group"."AlertKey",
					"al_group"."AlertCode",
					"al_group"."CreationDate"
			) "al_group_1"
				LEFT JOIN "Trade" "trade_1" ON "al_group_1"."AlertKey" = "trade_1"."DealId"
				LEFT JOIN "Nomin" "nomin_1" ON "al_group_1"."AlertKey" = "nomin_1"."CargoId"
		WHERE
			("nomin_1"."DeliveryCounterParty" LIKE @DeliveryCounterParty OR "trade_1"."CounterParty" LIKE @DeliveryCounterParty OR "al_group_1"."AlertCode" LIKE @DeliveryCounterParty)
		GROUP BY
			"al_group_1"."AlertKey",
			"al_group_1"."AlertCode",
			"al_group_1"."CreationDate"
	) "al_group_3"
		LEFT JOIN (
			SELECT
				"nomin_2"."CargoId",
				"nomin_2"."DeliveryId",
				"nomin_2"."DeliveryCounterParty",
				"trade_2"."DealId",
				"trade_2"."ParcelId",
				"trade_2"."CounterParty",
				Coalesce("t1".MAX_1, "t1"."CreationDate") as "LastUpdate",
				Coalesce("t1".MAX_1, "t1"."CreationDate") as "LastUpdate_1",
				ROW_NUMBER() OVER (PARTITION BY "t1"."AlertKey", "t1"."AlertCode", "t1"."CreationDate" ORDER BY "t1"."AlertKey") as "rn",
				"t1"."AlertKey",
				"t1"."AlertCode",
				"t1"."CreationDate"
			FROM
				(
					SELECT
						"al_group_2"."AlertKey",
						"al_group_2"."AlertCode",
						"al_group_2"."CreationDate",
						MAX("au_1"."TransactionDate") as MAX_1
					FROM
						"Alert" "al_group_2"
							LEFT JOIN "AuditAlert" "au_1" ON "au_1"."AlertKey" = "al_group_2"."AlertKey"
					GROUP BY
						"al_group_2"."AlertKey",
						"al_group_2"."AlertCode",
						"al_group_2"."CreationDate"
				) "t1"
					LEFT JOIN "Trade" "trade_2" ON "t1"."AlertKey" = "trade_2"."DealId"
					LEFT JOIN "Nomin" "nomin_2" ON "t1"."AlertKey" = "nomin_2"."CargoId"
			WHERE
				("nomin_2"."DeliveryCounterParty" LIKE @DeliveryCounterParty OR "trade_2"."CounterParty" LIKE @DeliveryCounterParty OR "t1"."AlertCode" LIKE @DeliveryCounterParty)
		) "t2" ON "al_group_3"."AlertKey" = "t2"."AlertKey" AND "al_group_3"."AlertCode" = "t2"."AlertCode" AND "al_group_3"."CreationDate" = "t2"."CreationDate" AND "t2"."rn" <= 1

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Flat')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Flat"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Nomin')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Nomin"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Trade')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Trade"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AuditAlert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AuditAlert"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Alert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Alert"';
END

