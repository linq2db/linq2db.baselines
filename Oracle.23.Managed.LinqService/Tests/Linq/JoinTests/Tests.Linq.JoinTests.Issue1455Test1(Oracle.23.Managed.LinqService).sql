BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Alert"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Alert"
		(
			"AlertKey"     VarChar(255) NOT NULL,
			"AlertCode"    VarChar(255) NOT NULL,
			"CreationDate" timestamp    NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "AuditAlert"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "AuditAlert"
		(
			"AlertKey"        VarChar(255) NOT NULL,
			"AlertCode"       VarChar(255) NOT NULL,
			"CreationDate"    timestamp    NOT NULL,
			"TransactionDate" timestamp        NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Trade"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Trade"
		(
			"DealId"       Int          NOT NULL,
			"ParcelId"     Int          NOT NULL,
			"CounterParty" VarChar(255)     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Nomin"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Nomin"
		(
			"CargoId"              Int          NOT NULL,
			"DeliveryId"           Int          NOT NULL,
			"DeliveryCounterParty" VarChar(255)     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Flat"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Flat"
		(
			"AlertKey"             VarChar(255)     NULL,
			"AlertCode"            VarChar(255)     NULL,
			"CargoId"              Int              NULL,
			"DeliveryId"           Int              NULL,
			"DeliveryCounterParty" VarChar(255)     NULL,
			"DealId"               Int              NULL,
			"ParcelId"             Int              NULL,
			"CounterParty"         VarChar(255)     NULL,
			"TransactionDate"      timestamp        NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @cpty Varchar2(3) -- String
SET     @cpty = '%C%'
DECLARE @cpty_1 Varchar2(3) -- String
SET     @cpty_1 = '%C%'
DECLARE @cpty_2 Varchar2(3) -- String
SET     @cpty_2 = '%C%'
DECLARE @cpty_3 Varchar2(3) -- String
SET     @cpty_3 = '%C%'
DECLARE @cpty_4 Varchar2(3) -- String
SET     @cpty_4 = '%C%'
DECLARE @cpty_5 Varchar2(3) -- String
SET     @cpty_5 = '%C%'

SELECT
	al_group_4."AlertKey",
	al_group_4."AlertCode",
	t2."LastUpdate_1",
	t2."CargoId",
	t2."DeliveryId",
	t2."DeliveryCounterParty",
	t2."DealId",
	t2."ParcelId",
	t2."CounterParty",
	t2."LastUpdate"
FROM
	(
		SELECT
			al_group_1."AlertKey",
			al_group_1."AlertCode",
			al_group_1."CreationDate"
		FROM
			(
				SELECT
					al_group."AlertKey",
					al_group."AlertCode",
					al_group."CreationDate"
				FROM
					"Alert" al_group
						LEFT JOIN "AuditAlert" au ON au."AlertKey" = al_group."AlertKey" AND au."AlertCode" = au."AlertCode"
				GROUP BY
					al_group."AlertKey",
					al_group."AlertCode",
					al_group."CreationDate"
			) al_group_1
				LEFT JOIN (
					SELECT
						trade_1."CounterParty",
						Cast(trade_1."DealId" as VarChar(255)) as "c1"
					FROM
						"Trade" trade_1
				) trade_2 ON al_group_1."AlertKey" = trade_2."c1"
				LEFT JOIN (
					SELECT
						nomin_1."DeliveryCounterParty",
						Cast(nomin_1."CargoId" as VarChar(255)) as "c1"
					FROM
						"Nomin" nomin_1
				) nomin_2 ON al_group_1."AlertKey" = nomin_2."c1"
		WHERE
			(nomin_2."DeliveryCounterParty" LIKE :cpty ESCAPE '~' OR trade_2."CounterParty" LIKE :cpty_1 ESCAPE '~' OR al_group_1."AlertCode" LIKE :cpty_2 ESCAPE '~')
		GROUP BY
			al_group_1."AlertKey",
			al_group_1."AlertCode",
			al_group_1."CreationDate"
	) al_group_4
		OUTER APPLY (
			SELECT
				nomin_4."CargoId",
				nomin_4."DeliveryId",
				nomin_4."DeliveryCounterParty",
				trade_4."DealId",
				trade_4."ParcelId",
				trade_4."CounterParty",
				Nvl(t1.MAX_1, t1."CreationDate") as "LastUpdate",
				Nvl(t1.MAX_1, t1."CreationDate") as "LastUpdate_1"
			FROM
				(
					SELECT
						al_group_3."AlertKey",
						al_group_3."AlertCode",
						al_group_3."CreationDate",
						(
							SELECT
								MAX(au_2."TransactionDate")
							FROM
								"Alert" al
									LEFT JOIN "AuditAlert" au_2 ON au_2."AlertKey" = al."AlertKey" AND au_2."AlertCode" = au_2."AlertCode"
							WHERE
								al_group_3."AlertKey" = al."AlertKey" AND al_group_3."AlertCode" = al."AlertCode" AND
								al_group_3."CreationDate" = al."CreationDate"
						) as MAX_1
					FROM
						(
							SELECT
								al_group_2."AlertKey",
								al_group_2."AlertCode",
								al_group_2."CreationDate"
							FROM
								"Alert" al_group_2
									LEFT JOIN "AuditAlert" au_1 ON au_1."AlertKey" = al_group_2."AlertKey" AND au_1."AlertCode" = au_1."AlertCode"
							GROUP BY
								al_group_2."AlertKey",
								al_group_2."AlertCode",
								al_group_2."CreationDate"
						) al_group_3
				) t1
					LEFT JOIN (
						SELECT
							trade_3."CounterParty",
							trade_3."DealId",
							trade_3."ParcelId",
							Cast(trade_3."DealId" as VarChar(255)) as "c1"
						FROM
							"Trade" trade_3
					) trade_4 ON t1."AlertKey" = trade_4."c1"
					LEFT JOIN (
						SELECT
							nomin_3."DeliveryCounterParty",
							nomin_3."CargoId",
							nomin_3."DeliveryId",
							Cast(nomin_3."CargoId" as VarChar(255)) as "c1"
						FROM
							"Nomin" nomin_3
					) nomin_4 ON t1."AlertKey" = nomin_4."c1"
			WHERE
				(nomin_4."DeliveryCounterParty" LIKE :cpty_3 ESCAPE '~' OR trade_4."CounterParty" LIKE :cpty_4 ESCAPE '~' OR t1."AlertCode" LIKE :cpty_5 ESCAPE '~') AND
				al_group_4."AlertKey" = t1."AlertKey" AND
				al_group_4."AlertCode" = t1."AlertCode" AND
				al_group_4."CreationDate" = t1."CreationDate"
			FETCH NEXT 1 ROWS ONLY
		) t2

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Flat"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Nomin"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Trade"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "AuditAlert"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Alert"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

