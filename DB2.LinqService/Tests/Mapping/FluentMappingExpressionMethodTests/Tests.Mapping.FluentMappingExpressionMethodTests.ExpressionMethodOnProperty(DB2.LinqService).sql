BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	COUNT(*)
FROM
	"InstanceClass" "t"
WHERE
	RTrim(Char("t"."Id")) || RTrim(Char("t"."Value")) = RTrim(Char("t"."Id")) || "t"."Value"

