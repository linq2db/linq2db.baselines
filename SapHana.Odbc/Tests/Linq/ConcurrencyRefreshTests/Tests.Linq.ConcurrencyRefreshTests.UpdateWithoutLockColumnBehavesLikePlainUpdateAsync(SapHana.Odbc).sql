-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = 5
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO "ConcurrencyRefreshNoLock"
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
DECLARE @Stamp Int -- Int32
SET     @Stamp = 5
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'updated'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	"ConcurrencyRefreshNoLock" "obj"
SET
	"Stamp" = ?,
	"Value" = ?
WHERE
	"obj"."Id" = ?

-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Id",
	"r"."Stamp",
	"r"."Value"
FROM
	"ConcurrencyRefreshNoLock" "r"
WHERE
	"r"."Id" = 1
LIMIT 2

