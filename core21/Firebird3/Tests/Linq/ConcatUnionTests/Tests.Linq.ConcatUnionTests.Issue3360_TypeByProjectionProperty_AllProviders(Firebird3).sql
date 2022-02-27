BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Issue3360Table"
(
	"Id"  Int                                    NOT NULL,
	"Str" VarChar(255) CHARACTER SET UNICODE_FSS,

	CONSTRAINT "PK_Issue3360Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird3 Firebird

SELECT
	"p"."Id",
	'str1'
FROM
	"Issue3360Table" "p"
UNION ALL
SELECT
	"p_1"."Id",
	'str2'
FROM
	"Issue3360Table" "p_1"

BeforeExecute
-- Firebird3 Firebird

SELECT
	"p"."Id",
	'str2'
FROM
	"Issue3360Table" "p"
UNION ALL
SELECT
	"p_1"."Id",
	'str1'
FROM
	"Issue3360Table" "p_1"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3360Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3360Table"';
END

