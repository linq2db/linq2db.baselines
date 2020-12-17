BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "Alert"
(
	"AlertKey"     VarChar(255)     NULL,
	"AlertCode"    VarChar(255)     NULL,
	"CreationDate" timestamp        NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "AuditAlert"
(
	"CreationDate"    timestamp        NULL,
	"AlertCode"       VarChar(255)     NULL,
	"AlertKey"        VarChar(255)     NULL,
	"TransactionDate" timestamp        NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "Trade"
(
	"DealId"       Int          NOT NULL,
	"ParcelId"     Int          NOT NULL,
	"CounterParty" VarChar(255)     NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "Nomin"
(
	"CargoId"              Int          NOT NULL,
	"DeliveryId"           Int          NOT NULL,
	"DeliveryCounterParty" VarChar(255)     NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

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

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @cpty_3 Varchar2(3) -- String
SET     @cpty_3 = '%C%'
DECLARE @cpty_4 Varchar2(3) -- String
SET     @cpty_4 = '%C%'
DECLARE @cpty_5 Varchar2(3) -- String
SET     @cpty_5 = '%C%'

SELECT
	al_1."alert",
	al_1."alert_1",
	al_1."alert_2"
FROM
	(
		SELECT
			al."AlertKey" as "alert",
			al."AlertCode" as "alert_1",
			al."CreationDate" as "alert_2"
		FROM
			"Alert" al
				LEFT JOIN "AuditAlert" au1 ON (au1."AlertKey" = al."AlertKey" OR au1."AlertKey" IS NULL AND al."AlertKey" IS NULL) AND (au1."AlertCode" = au1."AlertCode" OR au1."AlertCode" IS NULL AND au1."AlertCode" IS NULL)
		GROUP BY
			al."AlertKey",
			al."AlertCode",
			al."CreationDate"
	) al_1
		LEFT JOIN "Trade" trade1 ON al_1."alert" = Cast(trade1."DealId" as VarChar2(11))
		LEFT JOIN "Nomin" nomin1 ON al_1."alert" = Cast(nomin1."CargoId" as VarChar2(11))
WHERE
	((nomin1."DeliveryCounterParty" LIKE :cpty_3 ESCAPE '~' OR trade1."CounterParty" LIKE :cpty_4 ESCAPE '~') OR al_1."alert_1" LIKE :cpty_5 ESCAPE '~')
GROUP BY
	al_1."alert",
	al_1."alert_1",
	al_1."alert_2"

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "Flat"

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "Nomin"

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "Trade"

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "AuditAlert"

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "Alert"

