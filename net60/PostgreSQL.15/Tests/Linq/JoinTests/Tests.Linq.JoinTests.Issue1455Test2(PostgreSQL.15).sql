BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Alert"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Alert"
(
	"AlertKey"     text          NULL,
	"AlertCode"    text          NULL,
	"CreationDate" TimeStamp     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "AuditAlert"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "AuditAlert"
(
	"AlertKey"        text          NULL,
	"AlertCode"       text          NULL,
	"CreationDate"    TimeStamp     NULL,
	"TransactionDate" TimeStamp     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Trade"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Trade"
(
	"DealId"       Int  NOT NULL,
	"ParcelId"     Int  NOT NULL,
	"CounterParty" text     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Nomin"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Nomin"
(
	"CargoId"              Int  NOT NULL,
	"DeliveryId"           Int  NOT NULL,
	"DeliveryCounterParty" text     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Flat"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Flat"
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
-- PostgreSQL.15 PostgreSQL
DECLARE @DeliveryCounterParty Text(3) -- String
SET     @DeliveryCounterParty = '%C%'

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
		LEFT JOIN "Trade" trade1 ON al_1.alert = Cast(trade1."DealId" as text)
		LEFT JOIN "Nomin" nomin1 ON al_1.alert = Cast(nomin1."CargoId" as text)
WHERE
	((nomin1."DeliveryCounterParty" LIKE :DeliveryCounterParty OR trade1."CounterParty" LIKE :DeliveryCounterParty) OR al_1.alert_1 LIKE :DeliveryCounterParty)
GROUP BY
	al_1.alert,
	al_1.alert_1,
	al_1.alert_2

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Flat"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Nomin"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Trade"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "AuditAlert"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Alert"

