BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4454Client"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue4454Client"
(
	"Id"   Integer       NOT NULL,
	"Name" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4454Service"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue4454Service"
(
	"Id"       Integer NOT NULL,
	"IdClient" Integer     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"a_Client1"."Name"
FROM
	"Issue4454Service" "s"
		INNER JOIN "Issue4454Client" "a_Client1" ON "s"."IdClient" = "a_Client1"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4454Service"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4454Client"

