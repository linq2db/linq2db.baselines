BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Alert"
(
	"AlertKey"     NVarChar(255)     NULL,
	"AlertCode"    NVarChar(255)     NULL,
	"CreationDate" Timestamp         NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "AuditAlert"
(
	"CreationDate"    Timestamp         NULL,
	"AlertCode"       NVarChar(255)     NULL,
	"AlertKey"        NVarChar(255)     NULL,
	"TransactionDate" Timestamp         NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Trade"
(
	"DealId"       Integer       NOT NULL,
	"ParcelId"     Integer       NOT NULL,
	"CounterParty" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Nomin"
(
	"CargoId"              Integer       NOT NULL,
	"DeliveryId"           Integer       NOT NULL,
	"DeliveryCounterParty" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Flat"
(
	"AlertKey"             NVarChar(255)     NULL,
	"AlertCode"            NVarChar(255)     NULL,
	"CargoId"              Integer           NULL,
	"DeliveryId"           Integer           NULL,
	"DeliveryCounterParty" NVarChar(255)     NULL,
	"DealId"               Integer           NULL,
	"ParcelId"             Integer           NULL,
	"CounterParty"         NVarChar(255)     NULL,
	"TransactionDate"      Timestamp         NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Flat"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Nomin"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Trade"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "AuditAlert"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Alert"

