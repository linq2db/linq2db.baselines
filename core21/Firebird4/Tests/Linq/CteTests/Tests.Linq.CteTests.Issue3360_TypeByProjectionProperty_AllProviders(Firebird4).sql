BeforeExecute
-- Firebird4 Firebird

CREATE TABLE "Issue3360Table"
(
	"Id"  Int                                    NOT NULL,
	"Str" VarChar(255) CHARACTER SET UNICODE_FSS,

	CONSTRAINT "PK_Issue3360Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird4 Firebird

WITH RECURSIVE "cte" ("Id", "Str")
AS
(
	SELECT
		"p"."Id",
		'Str1'
	FROM
		"Issue3360Table" "p"
	UNION ALL
	SELECT
		"p_1"."Id",
		'Str2'
	FROM
		"cte" "p_1"
			INNER JOIN "Issue3360Table" "r" ON "p_1"."Id" = "r"."Id" + 1
)
SELECT
	"t1"."Id",
	"t1"."Str"
FROM
	"cte" "t1"

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3360Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3360Table"';
END

