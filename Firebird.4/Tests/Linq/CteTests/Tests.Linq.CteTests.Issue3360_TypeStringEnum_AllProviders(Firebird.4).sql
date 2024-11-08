BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3360WithEnum')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3360WithEnum"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3360WithEnum')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue3360WithEnum"
			(
				"Id"  Int                                   NOT NULL,
				"Str" VarChar(50) CHARACTER SET UNICODE_FSS NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

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
		"t1"."Id",
		CAST('THIS_IS_TWO' AS VarChar(50) CHARACTER SET UNICODE_FSS)
	FROM
		"cte" "t1"
			INNER JOIN "Issue3360WithEnum" "r" ON "t1"."Id" = "r"."Id" + 1
)
SELECT
	"t2"."Id",
	"t2"."Str"
FROM
	"cte" "t2"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3360WithEnum')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3360WithEnum"';
END

