BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "ProductTable"
(
	"Id"   Integer       NOT NULL,
	"Name" NVarChar(255) NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "ProductAttributeTable"
(
	"Id"   Integer       NOT NULL,
	"Name" NVarChar(255) NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "ProductAttributeMapping"
(
	"ProductId"          Integer NOT NULL,
	"ProductAttributeId" Integer NOT NULL,

	PRIMARY KEY ("ProductId", "ProductAttributeId")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ProductAttributeMapping"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ProductAttributeTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ProductTable"

