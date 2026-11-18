-- SapHana.Native SapHana
DECLARE @Value Integer -- Int32
SET     @Value = 10
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	"Issue681Table" "t1"
SET
	"Value" = :"Value"
WHERE
	"t1"."ID" = :"ID"

