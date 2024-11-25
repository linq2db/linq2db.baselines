BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestEqualsTable1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TestEqualsTable1"
(
	"Id" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestEqualsTable2"

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
	"t1"."Id"
FROM
	"TestEqualsTable1" "t1"
WHERE
	EXISTS(
		SELECT
			1
		FROM
			"TestEqualsTable2" "t2"
		WHERE
			1 = 0
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestEqualsTable2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestEqualsTable1"

