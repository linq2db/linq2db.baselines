BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Adsl"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Adsl"
(
	"Id"       Integer NOT NULL,
	"IdClient" Integer     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Client"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Client"
(
	"Id" Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"adsl_1"."Id"
FROM
	"Adsl" "adsl_1"
		INNER JOIN "Client" "client_1" ON "adsl_1"."IdClient" = "client_1"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Client"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Adsl"

