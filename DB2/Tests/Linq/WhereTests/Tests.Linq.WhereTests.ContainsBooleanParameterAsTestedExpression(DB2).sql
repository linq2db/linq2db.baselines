-- DB2 DB2.LUW DB2LUW
DECLARE @flag SmallInt(4) -- Int16
SET     @flag = 1

SELECT
	"t".ID
FROM
	"LinqDataTypes" "t"
WHERE
	@flag IN ("t"."BoolValue")

