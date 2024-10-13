BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "NestingA"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "NestingA"
(
	"Property1" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "NestingB"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "NestingB"
(
	"Property1" NVarChar(255)     NULL,
	"Property2" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "NestingC"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "NestingC"
(
	"Property1" NVarChar(255)     NULL,
	"Property2" NVarChar(255)     NULL,
	"Property3" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

WITH "CTE_1" ("Property1")
AS
(
	SELECT
		"a"."Property2"
	FROM
		"NestingC" "a"
)
SELECT
	"c2"."Property1",
	"t_1"."Property2",
	"t_1"."Property3"
FROM
	"CTE_1" "c2"
		CROSS JOIN "NestingC" "t"
		CROSS JOIN "NestingC" "t_1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "NestingC"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "NestingB"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "NestingA"

