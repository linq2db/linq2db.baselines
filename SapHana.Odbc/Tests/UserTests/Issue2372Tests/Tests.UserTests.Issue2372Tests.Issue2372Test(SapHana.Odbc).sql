BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "InventoryResource"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "InventoryResource"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "InventoryResource"
(
	"Id"     Char (36)      NOT NULL,
	"Status" NVarChar(5000) NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Char(36) -- AnsiStringFixedLength
SET     @Id = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @Status NVarChar(4) -- String
SET     @Status = 'Used'

INSERT INTO "InventoryResource"
(
	"Id",
	"Status"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "InventoryResource"

