BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "BaseTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "BaseTable"
(
	"Value" Integer NOT NULL,
	"Id"    Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @BaseValue  -- Int32
SET     @BaseValue = 100
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "BaseTable"
(
	"Value",
	"Id"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "BaseTable"

