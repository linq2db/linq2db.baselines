-- DB2 DB2.LUW DB2LUW
DECLARE @arr Integer(4) -- Int32
SET     @arr = 3

INSERT INTO "ArrayLengthTable"
(
	"Id",
	"Value"
)
VALUES
(
	1,
	@arr
)

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"ArrayLengthTable" "t1"
FETCH NEXT 2 ROWS ONLY

