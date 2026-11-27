-- DB2 DB2.LUW DB2LUW
SELECT
	"cb"."Id",
	"cb"."Name",
	"cb"."ContactEmail",
	"cb"."Enabled"
FROM
	"EnumClientRecord" "cb"
WHERE
	"cb"."ClientType" = 'Client'

