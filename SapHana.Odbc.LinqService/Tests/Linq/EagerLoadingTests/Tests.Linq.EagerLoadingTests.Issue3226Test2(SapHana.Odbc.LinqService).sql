BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Item"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Item"
(
	"Id"   Integer       NOT NULL,
	"Text" NVarChar(255)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ItemValue"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "ItemValue"
(
	"Id"     Integer NOT NULL,
	"ItemId" Integer NOT NULL,
	"Value"  Decimal NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"m_1"."Id",
	"d"."Value"
FROM
	"Item" "m_1"
		INNER JOIN "ItemValue" "d" ON "m_1"."Id" = "d"."ItemId"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."Id",
	"x"."Text"
FROM
	"Item" "x"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ItemValue"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Item"

