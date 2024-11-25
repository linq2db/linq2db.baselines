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
			1
		FROM
			"Relationship1711" "r"
		WHERE
			"r"."Deleted" = 0 AND "r"."EntityId" = "t"."Id"
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Relationship1711"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Entity1711"

