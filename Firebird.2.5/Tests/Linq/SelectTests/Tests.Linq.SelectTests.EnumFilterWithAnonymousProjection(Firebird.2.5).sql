-- Firebird.2.5 Firebird
SELECT
	"cb"."Id",
	"cb"."Name",
	"cb"."ContactEmail",
	"cb"."Enabled"
FROM
	"EnumClientRecord" "cb"
WHERE
	"cb"."ClientType" = 'Client'

