﻿BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"user_1"."Id",
	"user_1"."FirstName",
	"user_1"."Status"
FROM
	"User" "user_1"
WHERE
	"user_1"."Status" IS NULL

