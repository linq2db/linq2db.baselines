-- DB2 DB2.LUW DB2LUW
DECLARE @Test Integer(4) -- Int32
SET     @Test = 2

UPDATE
	"testparams" "t"
SET
	"Test名前" = CAST(@Test AS Int)
WHERE
	"t"."Test名前" = 1

