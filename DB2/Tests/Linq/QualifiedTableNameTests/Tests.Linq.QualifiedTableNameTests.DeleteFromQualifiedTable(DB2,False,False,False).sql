-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

DELETE FROM
	"QualifiedNameTable" "t1"
WHERE
	"t1".ID = @ID

