BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "Alert"
(
	"AlertKey"     text          NULL,
	"AlertCode"    text          NULL,
	"CreationDate" TimeStamp     NULL
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "AuditAlert"
(
	"CreationDate"    TimeStamp     NULL,
	"AlertCode"       text          NULL,
	"AlertKey"        text          NULL,
	"TransactionDate" TimeStamp     NULL
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "Trade"
(
	"DealId"       Int  NOT NULL,
	"ParcelId"     Int  NOT NULL,
	"CounterParty" text     NULL
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "Nomin"
(
	"CargoId"              Int  NOT NULL,
	"DeliveryId"           Int  NOT NULL,
	"DeliveryCounterParty" text     NULL
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

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
-- PostgreSQL.9.2 PostgreSQL
DECLARE @p1 Text(3) -- String
SET     @p1 = '%C%'
DECLARE @p2 Text(3) -- String
SET     @p2 = '%C%'
DECLARE @p3 Text(3) -- String
SET     @p3 = '%C%'

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
	((nomin1."DeliveryCounterParty" LIKE :p1 OR trade1."CounterParty" LIKE :p2) OR al_1.alert_1 LIKE :p3)
GROUP BY
	al_1.alert,
	al_1.alert_1,
	al_1.alert_2

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "Flat"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "Nomin"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "Trade"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "AuditAlert"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "Alert"

