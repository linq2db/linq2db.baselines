﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "Alert"
(
	"AlertKey"     text          NULL,
	"AlertCode"    text          NULL,
	"CreationDate" TimeStamp     NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "AuditAlert"
(
	"CreationDate"    TimeStamp     NULL,
	"AlertCode"       text          NULL,
	"AlertKey"        text          NULL,
	"TransactionDate" TimeStamp     NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "Trade"
(
	"DealId"       Int  NOT NULL,
	"ParcelId"     Int  NOT NULL,
	"CounterParty" text     NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "Nomin"
(
	"CargoId"              Int  NOT NULL,
	"DeliveryId"           Int  NOT NULL,
	"DeliveryCounterParty" text     NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @cpty_1 Text(3) -- String
SET     @cpty_1 = '%C%'
DECLARE @cpty_2 Text(3) -- String
SET     @cpty_2 = '%C%'
DECLARE @cpty_3 Text(3) -- String
SET     @cpty_3 = '%C%'

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
	((nomin1."DeliveryCounterParty" LIKE :cpty_1 ESCAPE '~' OR trade1."CounterParty" LIKE :cpty_2 ESCAPE '~') OR al_1.alert_1 LIKE :cpty_3 ESCAPE '~')
GROUP BY
	al_1.alert,
	al_1.alert_1,
	al_1.alert_2

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Flat"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Nomin"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Trade"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "AuditAlert"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Alert"

