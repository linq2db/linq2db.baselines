-- DB2 DB2.LUW DB2LUW
SELECT
	"t"."Id",
	"t"."Value",
	"t"."ValueStr"
FROM
	"InstanceClass" "t"
WHERE
	"t"."Id" > 1 AND
	"t"."Value" >= 104 AND
	"t"."Value" <= 115 AND
	"t"."ValueStr" LIKE 'S%' ESCAPE '~'

-- DB2 DB2.LUW DB2LUW
SELECT
	"t"."Id",
	"t"."Value",
	"t"."ValueStr"
FROM
	"InstanceClass" "t"
WHERE
	"t"."Id" > 1 AND
	"t"."Value" >= 104 AND
	"t"."Value" <= 115 AND
	"t"."ValueStr" LIKE 'S%' ESCAPE '~'

