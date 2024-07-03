BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3757Level1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue3757Level1"
(
	"ID"     Integer       NOT NULL,
	"ValS"   NVarChar(255)     NULL,
	"ValB"   TinyInt           NULL,
	"ValInt" Integer           NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3757Level2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue3757Level2"
(
	"ID"       Integer       NOT NULL,
	"ParentId" Integer       NOT NULL,
	"ValS"     NVarChar(255)     NULL,
	"ValB"     TinyInt           NULL,
	"ValInt"   Integer           NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"m_1"."ID",
	"m_1"."ValS",
	"d"."ID",
	"d"."ValB",
	"d"."ValInt"
FROM
	"Issue3757Level1" "m_1"
		INNER JOIN "Issue3757Level2" "d" ON "m_1"."ID" = "d"."ParentId"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"l1"."ID",
	"l1"."ValB",
	"l1"."ValS",
	"l1"."ValInt"
FROM
	"Issue3757Level1" "l1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3757Level2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3757Level1"

