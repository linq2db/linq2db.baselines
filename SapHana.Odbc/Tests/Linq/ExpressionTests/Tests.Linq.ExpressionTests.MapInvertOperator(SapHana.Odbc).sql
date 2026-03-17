-- SapHana.Odbc SapHanaOdbc
DECLARE @addMask Int -- Int32
SET     @addMask = 3
DECLARE @addMask Int -- Int32
SET     @addMask = 3
DECLARE @removeMask Int -- Int32
SET     @removeMask = 12

UPDATE
	"WarehouseTableDto" "t1"
SET
	"Value" = BITAND(("t1"."Value" + ?) - BITAND("t1"."Value", ?), BITNOT(?))

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"WarehouseTableDto" "t1"
LIMIT 2

