﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"cb"."Id",
	"cb"."Name",
	"cb"."ContactEmail",
	"cb"."Enabled"
FROM
	"CustomerBase" "cb"
WHERE
	"cb"."ClientType" = 'Client'

