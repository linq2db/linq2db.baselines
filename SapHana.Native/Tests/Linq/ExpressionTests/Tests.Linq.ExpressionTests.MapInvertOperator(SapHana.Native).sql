-- SapHana.Native SapHana
DECLARE @addMask Integer -- Int32
SET     @addMask = 3
DECLARE @addMask_1 Integer -- Int32
SET     @addMask_1 = 3
DECLARE @removeMask Integer -- Int32
SET     @removeMask = 12

UPDATE
	"WarehouseTableDto" "t1"
SET
	"Value" = BITAND(("t1"."Value" + :"addMask") - BITAND("t1"."Value", :"addMask_1"), BITNOT(:"removeMask"))

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"WarehouseTableDto" "t1"
LIMIT 2

