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
	"x"."Id",
	(
		SELECT
			Count(*)
		FROM
			"SubEntity" "t1"
		WHERE
			"x"."Id" = "t1"."MainEntityId"
	)
FROM
	"MainEntity" "x"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"SubEntity" "t2"
		WHERE
			"x"."Id" = "t2"."MainEntityId"
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "SubEntity"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "MainEntity"

