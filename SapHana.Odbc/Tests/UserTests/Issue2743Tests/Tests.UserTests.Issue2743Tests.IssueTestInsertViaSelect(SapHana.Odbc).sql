BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "MessageEventDTO"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "MessageEventDTO"
(
	"Id" Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "MessageEventDTOTb2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "MessageEventDTOTb2"
(
	"Id" Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "MessageEventDTOTb2"
(
	"Id"
)
SELECT
	"x"."Id"
FROM
	"MessageEventDTO" "x"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "MessageEventDTOTb2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "MessageEventDTO"

