BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TableWithPrimaryKey"
(
	"Key" Integer NOT NULL,

	PRIMARY KEY ("Key")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Key_1  -- Int32
SET     @Key_1 = 1

INSERT INTO "TableWithPrimaryKey"
(
	"Key"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TableWithPrimaryKey"

