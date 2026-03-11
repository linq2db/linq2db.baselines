-- DB2 DB2.LUW DB2LUW
DECLARE @Test Integer(4) -- Int32
SET     @Test = 2

UPDATE
	"testparams" "t"
SET
	"TestИмя" = @Test
WHERE
	"t"."TestИмя" = 1

