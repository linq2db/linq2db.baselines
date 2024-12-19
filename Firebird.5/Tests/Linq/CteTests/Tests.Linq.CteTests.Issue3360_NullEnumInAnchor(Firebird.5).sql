BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3360NullInAnchor')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3360NullInAnchor"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3360NullInAnchor')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue3360NullInAnchor"
			(
				"Id"    Int                                   NOT NULL,
				"Enum1" VarChar(50) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

WITH RECURSIVE "cte" ("Id", "Enum1")
AS
(
	SELECT
		"p"."Id",
		NULL
	FROM
		"Issue3360NullInAnchor" "p"
	UNION ALL
	SELECT
		"t1"."Id",
		CAST('THIS_IS_ONE' AS VarChar(50) CHARACTER SET UNICODE_FSS)
	FROM
		"cte" "t1"
			INNER JOIN "Issue3360NullInAnchor" "r" ON "t1"."Id" = "r"."Id" + 100
)
SELECT
	"t2"."Id",
	"t2"."Enum1"
FROM
	"cte" "t2"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3360NullInAnchor')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3360NullInAnchor"';
END

