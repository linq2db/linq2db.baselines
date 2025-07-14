BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"cb"."Id",
	"cb"."Name",
	"cb"."ContactEmail",
	"cb"."Enabled"
FROM
	"CustomerBase" "cb"
WHERE
	"cb"."ClientType" = 'Client'

