BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @from Integer(4) -- Int32
SET     @from = 2

UPDATE
	"testparams" "t"
SET
	"from" = @from
WHERE
	"t"."from" = 1

