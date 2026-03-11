-- SapHana.Odbc SapHanaOdbc

DROP TABLE "InventoryResource"

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

