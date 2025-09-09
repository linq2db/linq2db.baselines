BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @TestName Integer(4) -- Int32
SET     @TestName = 2

UPDATE
	"testparams" "t"
SET
	"Test-Name" = @TestName
WHERE
	"t"."Test-Name" = 1

