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
-- SapHana.Odbc SapHanaOdbc

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"SubEntity" "a_SubEntities"
		WHERE
			"x"."Id" = "a_SubEntities"."MainEntityId"
	)
FROM
	"MainEntity" "x"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "SubEntity"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "MainEntity"

