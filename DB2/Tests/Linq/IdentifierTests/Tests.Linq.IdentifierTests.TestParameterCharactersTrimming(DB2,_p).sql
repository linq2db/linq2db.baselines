-- DB2 DB2.LUW DB2LUW
DECLARE @p Integer(4) -- Int32
SET     @p = 2

UPDATE
	"testparams" "t"
SET
	"_p" = @p
WHERE
	"t"."_p" = 1

