BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"cb"."Id",
	"cb"."Name",
	"cb"."ContactEmail",
	"cb"."Enabled"
FROM
	"CustomerBase" "cb"
WHERE
	"cb"."ClientType" = 'Client'

