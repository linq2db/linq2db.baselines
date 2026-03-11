-- DB2 DB2.LUW DB2LUW

SELECT
	"c_1"."Key"
FROM
	"Issue5327Table" "c_1"
GROUP BY
	"c_1"."Key"
ORDER BY
	SUM("c_1"."Value") DESC

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Key",
	"t1"."Value"
FROM
	"Issue5327Table" "t1"

