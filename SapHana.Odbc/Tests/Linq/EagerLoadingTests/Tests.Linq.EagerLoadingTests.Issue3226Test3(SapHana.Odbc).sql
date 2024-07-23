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
BeginTransaction(RepeatableRead)
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"m_1"."Id",
	"d"."Value"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			(
				SELECT
					"x"."Id"
				FROM
					"Item" "x"
			) "t1"
	) "m_1"
		INNER JOIN "ItemValue" "d" ON "m_1"."Id" = "d"."ItemId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Text"
FROM
	(
		SELECT
			"x"."Id",
			"x"."Text",
			(
				SELECT
					SUM("a_Values"."Value")
				FROM
					"ItemValue" "a_Values"
				WHERE
					"x"."Id" = "a_Values"."ItemId"
			) as "SUM_1"
		FROM
			"Item" "x"
	) "t1"
ORDER BY
	"t1"."SUM_1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ItemValue"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Item"

