BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "BaseTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "BaseTable"
(
	"Id"    Integer NOT NULL,
	"Value" Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @BaseValue  -- Int32
SET     @BaseValue = 100

INSERT INTO "BaseTable"
(
	"Id",
	"Value"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."Id",
	"x"."Value"
FROM
	"BaseTable" "x"
WHERE
	"x"."Id" = 1
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."Id",
	"x"."Value"
FROM
	"BaseTable" "x"
WHERE
	"x"."Id" = 1 AND "x"."Value" = 100
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "BaseTable"

