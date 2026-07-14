-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = 5
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO "ConcurrencyRefreshAutoInc"
(
	"Id",
	"Stamp",
	"Value"
)
VALUES
(
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'updated'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = 5

UPDATE
	"ConcurrencyRefreshAutoInc" "obj"
SET
	"Stamp" = "obj"."Stamp" + 1,
	"Value" = ?
WHERE
	"obj"."Id" = ? AND "obj"."Stamp" = ?

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1

SELECT
	"obj"."Stamp"
FROM
	"ConcurrencyRefreshAutoInc" "obj"
WHERE
	"obj"."Id" = ?
LIMIT 1

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyRefreshAutoInc" "t1"
LIMIT 2

