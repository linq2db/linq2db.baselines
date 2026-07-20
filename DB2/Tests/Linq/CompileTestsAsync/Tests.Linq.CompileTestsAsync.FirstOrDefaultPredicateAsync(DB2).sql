-- DB2 DB2.LUW DB2LUW
DECLARE @p Integer(4) -- Int32
SET     @p = 2
DECLARE @p_1 Integer(4) -- Int32
SET     @p_1 = 2

SELECT
	CAST(@p AS Int),
	"c_1"."Id"
FROM
	"AsyncDataTable" "c_1"
WHERE
	"c_1"."Id" = @p_1
FETCH NEXT 1 ROWS ONLY

