BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TestEqualsTable1"
(
	"Id" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TestEqualsTable2"
(
	"Id" Integer NOT NULL,
	"FK" Integer     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"_"."Id"
FROM
	"TestEqualsTable1" "_"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"TestEqualsTable2" "__"
		WHERE
			"_"."Id" = "__"."FK" AND "__"."Id" IS NULL
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestEqualsTable2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestEqualsTable1"

