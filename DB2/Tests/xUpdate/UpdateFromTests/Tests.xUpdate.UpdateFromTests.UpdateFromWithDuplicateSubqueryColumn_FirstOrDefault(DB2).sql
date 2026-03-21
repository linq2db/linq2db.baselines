-- DB2 DB2.LUW DB2LUW
DECLARE @id1 Integer(4) -- Int32
SET     @id1 = 1

UPDATE
	"InsertFromWithConstantsTable"
SET
	"Value3" = 'string 1',
	"Value4" = 'string 1',
	("Value1", "Value2") = (
		SELECT
			"r"."Value3",
			"r"."Value3"
		FROM
			"InsertFromWithConstantsTable" "r"
		WHERE
			"r"."Id" = @id1
		FETCH NEXT 1 ROWS ONLY
	)

