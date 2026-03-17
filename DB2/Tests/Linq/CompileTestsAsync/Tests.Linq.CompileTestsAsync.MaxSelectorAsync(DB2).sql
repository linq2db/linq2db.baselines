-- DB2 DB2.LUW DB2LUW
DECLARE @p Integer(4) -- Int32
SET     @p = 2

SELECT
	MAX("c_1"."Id")
FROM
	"AsyncDataTable" "c_1"
WHERE
	"c_1"."Id" > @p

