﻿BeforeExecute
--  Firebird.2.5 Firebird

SELECT
	"p"."Id",
	"p"."Str"
FROM
	"Issue3360Table" "p"
UNION ALL
SELECT
	"p_1"."Id",
	CAST('str' AS VarChar(255) CHARACTER SET UNICODE_FSS)
FROM
	"Issue3360Table" "p_1"

BeforeExecute
--  Firebird.2.5 Firebird

SELECT
	"p"."Id",
	CAST('str' AS VarChar(255) CHARACTER SET UNICODE_FSS)
FROM
	"Issue3360Table" "p"
UNION ALL
SELECT
	"p_1"."Id",
	"p_1"."Str"
FROM
	"Issue3360Table" "p_1"

