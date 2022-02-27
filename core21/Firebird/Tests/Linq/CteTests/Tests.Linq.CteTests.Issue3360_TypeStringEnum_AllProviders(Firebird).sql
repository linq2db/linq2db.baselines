BeforeExecute
-- Firebird

CREATE TABLE "Issue3360WithEnum"
(
	"Id"  Int                                   NOT NULL,
	"Str" VarChar(50) CHARACTER SET UNICODE_FSS NOT NULL
)

BeforeExecute
-- Firebird

WITH RECURSIVE "cte" ("Id", "Str")
AS
(
	SELECT
		"p"."Id",
		"p"."Str"
	FROM
		"Issue3360WithEnum" "p"
	UNION ALL
	SELECT
		"p_1"."Id",
		'THIS_IS_TWO'
	FROM
		"cte" "p_1"
			INNER JOIN "Issue3360WithEnum" "r" ON "p_1"."Id" = "r"."Id" + 1
)
SELECT
	"t1"."Id",
	"t1"."Str"
FROM
	"cte" "t1"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3360WithEnum')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3360WithEnum"';
END

