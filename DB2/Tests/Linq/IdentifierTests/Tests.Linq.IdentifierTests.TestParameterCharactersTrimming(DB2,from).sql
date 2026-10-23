-- DB2 DB2.LUW DB2LUW
DECLARE @from Integer(4) -- Int32
SET     @from = 2

UPDATE
	"testparams" "t"
SET
	"from" = CAST(@from AS Int)
WHERE
	"t"."from" = 1

