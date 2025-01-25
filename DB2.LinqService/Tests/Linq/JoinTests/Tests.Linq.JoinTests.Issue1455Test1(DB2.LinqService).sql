BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Alert"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Alert"
		(
			"AlertKey"     NVarChar(255) NOT NULL,
			"AlertCode"    NVarChar(255) NOT NULL,
			"CreationDate" timestamp     NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "AuditAlert"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "AuditAlert"
		(
			"AlertKey"        NVarChar(255) NOT NULL,
			"AlertCode"       NVarChar(255) NOT NULL,
			"CreationDate"    timestamp     NOT NULL,
			"TransactionDate" timestamp         NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Trade"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Trade"
		(
			"DealId"       Int           NOT NULL,
			"ParcelId"     Int           NOT NULL,
			"CounterParty" NVarChar(255)     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Nomin"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Nomin"
		(
			"CargoId"              Int           NOT NULL,
			"DeliveryId"           Int           NOT NULL,
			"DeliveryCounterParty" NVarChar(255)     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Flat"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Flat"
		(
			"AlertKey"             NVarChar(255)     NULL,
			"AlertCode"            NVarChar(255)     NULL,
			"CargoId"              Int               NULL,
			"DeliveryId"           Int               NULL,
			"DeliveryCounterParty" NVarChar(255)     NULL,
			"DealId"               Int               NULL,
			"ParcelId"             Int               NULL,
			"CounterParty"         NVarChar(255)     NULL,
			"TransactionDate"      timestamp         NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @cpty VarChar(3) -- String
SET     @cpty = '%C%'
DECLARE @cpty_1 VarChar(3) -- String
SET     @cpty_1 = '%C%'
DECLARE @cpty_2 VarChar(3) -- String
SET     @cpty_2 = '%C%'
DECLARE @cpty_3 VarChar(3) -- String
SET     @cpty_3 = '%C%'
DECLARE @cpty_4 VarChar(3) -- String
SET     @cpty_4 = '%C%'
DECLARE @cpty_5 VarChar(3) -- String
SET     @cpty_5 = '%C%'

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
				LEFT JOIN "Trade" "trade_1" ON "al_group_1"."AlertKey" = RTrim(Char("trade_1"."DealId"))
				LEFT JOIN "Nomin" "nomin_1" ON "al_group_1"."AlertKey" = RTrim(Char("nomin_1"."CargoId"))
		WHERE
			("nomin_1"."DeliveryCounterParty" LIKE @cpty ESCAPE '~' OR "trade_1"."CounterParty" LIKE @cpty_1 ESCAPE '~' OR "al_group_1"."AlertCode" LIKE @cpty_2 ESCAPE '~')
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
					LEFT JOIN "Trade" "trade_2" ON "t1"."AlertKey" = RTrim(Char("trade_2"."DealId"))
					LEFT JOIN "Nomin" "nomin_2" ON "t1"."AlertKey" = RTrim(Char("nomin_2"."CargoId"))
			WHERE
				("nomin_2"."DeliveryCounterParty" LIKE @cpty_3 ESCAPE '~' OR "trade_2"."CounterParty" LIKE @cpty_4 ESCAPE '~' OR "t1"."AlertCode" LIKE @cpty_5 ESCAPE '~')
		) "t2" ON "al_group_3"."AlertKey" = "t2"."AlertKey" AND "al_group_3"."AlertCode" = "t2"."AlertCode" AND "al_group_3"."CreationDate" = "t2"."CreationDate" AND "t2"."rn" <= 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Flat"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Nomin"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Trade"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "AuditAlert"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Alert"';
END

