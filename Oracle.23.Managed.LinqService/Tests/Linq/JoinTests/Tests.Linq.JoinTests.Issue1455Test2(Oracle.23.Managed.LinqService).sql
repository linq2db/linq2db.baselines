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
DECLARE @DeliveryCounterParty Varchar2(3) -- String
SET     @DeliveryCounterParty = '%C%'

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
				LEFT JOIN "Trade" trade_1 ON al_group_1."AlertKey" = Cast(trade_1."DealId" as VarChar(255))
				LEFT JOIN "Nomin" nomin_1 ON al_group_1."AlertKey" = Cast(nomin_1."CargoId" as VarChar(255))
		WHERE
			(nomin_1."DeliveryCounterParty" LIKE :DeliveryCounterParty OR trade_1."CounterParty" LIKE :DeliveryCounterParty OR al_group_1."AlertCode" LIKE :DeliveryCounterParty)
		GROUP BY
			al_group_1."AlertKey",
			al_group_1."AlertCode",
			al_group_1."CreationDate"
	) al_group_4
		OUTER APPLY (
			SELECT
				nomin_2."CargoId",
				nomin_2."DeliveryId",
				nomin_2."DeliveryCounterParty",
				trade_2."DealId",
				trade_2."ParcelId",
				trade_2."CounterParty",
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
					LEFT JOIN "Trade" trade_2 ON t1."AlertKey" = Cast(trade_2."DealId" as VarChar(255))
					LEFT JOIN "Nomin" nomin_2 ON t1."AlertKey" = Cast(nomin_2."CargoId" as VarChar(255))
			WHERE
				(nomin_2."DeliveryCounterParty" LIKE :DeliveryCounterParty OR trade_2."CounterParty" LIKE :DeliveryCounterParty OR t1."AlertCode" LIKE :DeliveryCounterParty) AND
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

