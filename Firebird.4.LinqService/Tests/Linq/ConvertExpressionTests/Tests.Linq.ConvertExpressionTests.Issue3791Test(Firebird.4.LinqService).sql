﻿BeforeExecute
--  Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."OtherId",
	"a_Association"."Id"
FROM
	"Issue3791Table" "t1"
		LEFT JOIN "Issue3791GuidTable" "a_Association" ON "t1"."OtherId" = UUID_TO_CHAR("a_Association"."Id")

