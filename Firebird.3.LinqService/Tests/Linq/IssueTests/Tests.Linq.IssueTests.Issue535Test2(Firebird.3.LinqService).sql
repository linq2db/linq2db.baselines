﻿BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @filter VarChar(6) -- String
SET     @filter = '%test%'
DECLARE @filter_1 VarChar(6) -- String
SET     @filter_1 = '%test%'

SELECT
	"q"."Id",
	"q"."Name",
	"q"."ContactEmail",
	Coalesce("q"."Enabled", FALSE)
FROM
	"CustomerBase" "q"
WHERE
	"q"."ClientType" = 'Client' AND ("q"."Name" LIKE @filter ESCAPE '~' OR "q"."ContactEmail" LIKE @filter_1 ESCAPE '~')

