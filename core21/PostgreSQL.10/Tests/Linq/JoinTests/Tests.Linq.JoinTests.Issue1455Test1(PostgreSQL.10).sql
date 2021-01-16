BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "Alert"
(
	"AlertKey"     text          NULL,
	"AlertCode"    text          NULL,
	"CreationDate" TimeStamp     NULL
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "AuditAlert"
(
	"CreationDate"    TimeStamp     NULL,
	"AlertCode"       text          NULL,
	"AlertKey"        text          NULL,
	"TransactionDate" TimeStamp     NULL
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "Trade"
(
	"DealId"       Int  NOT NULL,
	"ParcelId"     Int  NOT NULL,
	"CounterParty" text     NULL
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "Nomin"
(
	"CargoId"              Int  NOT NULL,
	"DeliveryId"           Int  NOT NULL,
	"DeliveryCounterParty" text     NULL
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "Flat"
(
	"AlertKey"             text          NULL,
	"AlertCode"            text          NULL,
	"CargoId"              Int           NULL,
	"DeliveryId"           Int           NULL,
	"DeliveryCounterParty" text          NULL,
	"DealId"               Int           NULL,
	"ParcelId"             Int           NULL,
	"CounterParty"         text          NULL,
	"TransactionDate"      TimeStamp     NULL
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @cpty_3 Text(3) -- String
SET     @cpty_3 = '%C%'
DECLARE @cpty_4 Text(3) -- String
SET     @cpty_4 = '%C%'
DECLARE @cpty_5 Text(3) -- String
SET     @cpty_5 = '%C%'

SELECT
	al_1.alert,
	al_1.alert_1,
	al_1.alert_2
FROM
	(
		SELECT
			al."AlertKey" as alert,
			al."AlertCode" as alert_1,
			al."CreationDate" as alert_2
		FROM
			"Alert" al
				LEFT JOIN "AuditAlert" au1 ON (au1."AlertKey" = al."AlertKey" OR au1."AlertKey" IS NULL AND al."AlertKey" IS NULL) AND (au1."AlertCode" = au1."AlertCode" OR au1."AlertCode" IS NULL AND au1."AlertCode" IS NULL)
		GROUP BY
			al."AlertKey",
			al."AlertCode",
			al."CreationDate"
	) al_1
		LEFT JOIN "Trade" trade1 ON al_1.alert = Cast(trade1."DealId" as VarChar(11))
		LEFT JOIN "Nomin" nomin1 ON al_1.alert = Cast(nomin1."CargoId" as VarChar(11))
WHERE
	((nomin1."DeliveryCounterParty" LIKE :cpty_3 ESCAPE '~' OR trade1."CounterParty" LIKE :cpty_4 ESCAPE '~') OR al_1.alert_1 LIKE :cpty_5 ESCAPE '~')
GROUP BY
	al_1.alert,
	al_1.alert_1,
	al_1.alert_2

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE "Flat"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE "Nomin"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE "Trade"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE "AuditAlert"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE "Alert"

