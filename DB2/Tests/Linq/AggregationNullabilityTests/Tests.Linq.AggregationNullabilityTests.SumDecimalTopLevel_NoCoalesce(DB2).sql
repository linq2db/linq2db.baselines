-- DB2 DB2.LUW DB2LUW

SELECT
	SUM("i"."DecimalValue")
FROM
	"Inner" "i"
WHERE
	"i"."Group" = 1

