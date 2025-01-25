BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "MainEntity"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "MainEntity"
(
	"Id" Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "SubEntity"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "SubEntity"
(
	"Id"           Integer NOT NULL,
	"MainEntityId" Integer NOT NULL
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."MainEntityId"
FROM
	"MainEntity" "m_1"
		INNER JOIN "SubEntity" "d" ON "m_1"."Id" = "d"."MainEntityId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."Id"
FROM
	"MainEntity" "x"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "SubEntity"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "MainEntity"

