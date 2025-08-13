BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TableWithPrimaryKey2"
(
	"Key" Integer NOT NULL,

	PRIMARY KEY ("Key")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Key Int -- Int32
SET     @Key = 1

INSERT INTO "TableWithPrimaryKey2"
(
	"Key"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TableWithPrimaryKey2"

