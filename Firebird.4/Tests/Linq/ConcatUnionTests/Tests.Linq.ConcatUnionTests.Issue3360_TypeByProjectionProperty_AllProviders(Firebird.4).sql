BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"p"."Id",
	CAST('str1' AS VarChar(255) CHARACTER SET UNICODE_FSS)
FROM
	"Issue3360Table" "p"
UNION ALL
SELECT
	"p_1"."Id",
	CAST('str2' AS VarChar(255) CHARACTER SET UNICODE_FSS)
FROM
	"Issue3360Table" "p_1"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"p"."Id",
	CAST('str2' AS VarChar(255) CHARACTER SET UNICODE_FSS)
FROM
	"Issue3360Table" "p"
UNION ALL
SELECT
	"p_1"."Id",
	CAST('str1' AS VarChar(255) CHARACTER SET UNICODE_FSS)
FROM
	"Issue3360Table" "p_1"

