BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Entity1711"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Entity1711"
(
	"Id" BigInt NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Relationship1711"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Relationship1711"
(
	"EntityId" BigInt  NOT NULL,
	"Deleted"  TinyInt NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id"
FROM
	"Entity1711" "t"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Relationship1711" "a_relationship"
		WHERE
			"t"."Id" = "a_relationship"."EntityId"
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Relationship1711"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Entity1711"

